Directr
=======

A small app for redirecting a user to a provider and then making sure they are redirected back to where you want them. This may be useful if the provider doesn't allow you to set the redirect-back URL dynamically.

Here's sample use case, with CheddarGetter.

Use Case
--------

We want to send a user to CheddarGetter to pay us. When they are done, CheddarGetter will redirect them back to us. We want each user to return to a different URL, but CheddarGetter only lets us specify one URL.

1. Host Directr at DIRECTR_DOMAIN and set CheddarGetter's redirect URL to http://DIRECTR_DOMAIN/wrap/out and .
2. When the user needs to pay, instead of sending them to CHEDDAR_GETTER_PAYMENT_URL like you normally would, send the user to http://DIRECTR_DOMAIN/wrap/in?in=CHEDDAR_GETTER_PAYMENT_URL&out=REDIRECT_URL
3. Once they've paid, CheddarGetter will send them back to http://DIRECTR_APP_DOMAIN/wrap/out, which redirects them to REDIRECT_URL.
