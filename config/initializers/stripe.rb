if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_JOrcYQCvzE0FKkchLSrrMZ48',
    :secret_key => 'sk_test_7nCS4WVbcq2u1yQuuyPMKX64'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]