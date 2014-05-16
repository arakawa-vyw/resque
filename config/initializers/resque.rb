Resque.redis = 'localhost:6379'
# アプリ毎に異なるnamespaceを定義しておく
Resque.redis.namespace = "resque:resque_sample:#{Rails.env}" 

