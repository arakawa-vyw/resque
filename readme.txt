http://qiita.com/hilotter/items/fc432c33f5a012b87dca

  QUEUE=resque_sample rake environment resque:work
  INTERVAL=60 QUEUE=resque_sample bundle exec rake environment resque:work

  # すべてのworkerを対象としたい場合は*を指定
  QUEUE=* rake environment resque:work

