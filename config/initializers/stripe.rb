Rails.configuration.stripe = {
  :publishable_key => "pk_test_C3PKdWbSsFEpAVfW2amarJk4",
  :secret_key      => "sk_test_Sio6fFOwR0SuSONKintdhZ9G"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]