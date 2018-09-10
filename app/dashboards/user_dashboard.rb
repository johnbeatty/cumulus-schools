require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    email: Field::String,
    password: Field::Password.with_options(searchable: false),
    password_confirmation: Field::Password.with_options(searchable: false),
    charges: Field::HasMany,
    subscriptions: Field::HasMany,
    connected_accounts: Field::HasMany.with_options(class_name: "User::ConnectedAccount"),
    invited_by: Field::Polymorphic,
    avatar_attachment: Field::HasOne,
    avatar_blob: Field::HasOne,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String,
    admin: Field::Boolean,
    time_zone: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    processor: Field::String,
    processor_id: Field::String,
    card_brand: Field::String,
    card_last4: Field::String,
    card_exp_month: Field::String,
    card_exp_year: Field::String,
    invitation_token: Field::String,
    invitation_created_at: Field::DateTime,
    invitation_sent_at: Field::DateTime,
    invitation_accepted_at: Field::DateTime,
    invitation_limit: Field::Number,
    invitations_count: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
    :subscriptions,
    :charges,
    :connected_accounts,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :charges,
    :subscriptions,
    :connected_accounts,
    :time_zone,
    :invited_by,
    :avatar_attachment,
    :avatar_blob,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :unconfirmed_email,
    :admin,
    :created_at,
    :updated_at,
    :processor,
    :processor_id,
    :card_brand,
    :card_last4,
    :card_exp_month,
    :card_exp_year,
    :invitation_token,
    :invitation_created_at,
    :invitation_sent_at,
    :invitation_accepted_at,
    :invitation_limit,
    :invitations_count,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :password,
    :password_confirmation,
    :admin,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
