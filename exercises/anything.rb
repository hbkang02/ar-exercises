categories_controller.rb
class Admin::CategoriesController < ApplicationController

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name,
      :category_id,
    )
  end

end

admin>categories>new.html.erb

<section class="admin-products-new">

  <header class="page-header">
    <h1>Admin &raquo; New Category</h1>
  </header>

  <div class="well">
     <%= link_to 'All Products', [:admin, :products], class: 'btn btn-info' %>
  </div>

  <div class="row">
    <div class="col-sm-6 col-sm-offset-1">
      <%= form_for [:admin, @category] do |form| %>

        <% if form.object.errors.any? %>
          <div class="alert alert-danger">
            <strong>The following errors prevented saving:</strong>
            <ul>
              <% form.object.errors.full_messages.each do |error| %>
                <li><%= error %></li>
              <% end %>
            </ul>
          </div>
        <% end %>

        <div class="form-group">
          <%= form.label :name %>
          <%= form.text_field :name, class: 'form-control' %>
        </div>

        <%= form.submit 'Create Category', class: 'btn btn-primary' %>
      <% end %>
    </div>
  </div>

</section>



