Rails.application.config.middleware.use OmniAuth::Builder do
  # The following is for facebook
  provider :facebook, [485516421516643], [ef78ec11e03e85a52d0356943f13b5f3], {:scope =&gt; 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}

  # If you want to also configure for additional login services, they would be configured here.
end