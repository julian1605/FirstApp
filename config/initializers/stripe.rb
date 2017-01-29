if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_vTXynREsm38xdnFdURYxOMEu',
    :secret_key => 'sk_test_wo3oV8YFw8yJWU1LCIjkU50V'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]