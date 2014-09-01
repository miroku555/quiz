require 'haml'
require 'sinatra'

set :bind, '0.0.0.0'


get '/quiz' do
  haml :quiz
end

get '/quiz01' do
  haml :quiz01
end

get '/quiz02' do
 haml :quiz02
end

get '/quiz03' do
  haml :quiz03
end

get '/quiz04' do
  haml :quiz04
end

get '/quiz05' do
  haml :quiz05
end

post '/quiz01' do
  quiz = params['quiz01'].to_i
  STDERR.puts quiz
  if quiz == 2 
    @ans = "正解"
  else					  
    @ans = "不正解"
  end
  haml :quiz_kekka01
end

post '/quiz02' do
  quiz = params['quiz02'].to_i
  STDERR.puts quiz
  if quiz == 3
    @ans = "正解"
  else
    @ans = "不正解"
  end
  haml :quiz_kekka02
end

post '/quiz03' do
  quiz = params['quiz03'].to_i
  STDERR.puts quiz
  if quiz == 1 
    @ans = "正解"
  else
    @ans = "不正解"
  end
  haml :quiz_kekka03
end

post '/quiz04' do
  quiz = params['quiz04'].to_i
  STDERR.puts quiz
  if quiz == 2
    @ans = "正解"
  else
    @ans = "不正解"
  end
    haml :quiz_kekka04
end

post '/quiz05' do
  quiz = params['quiz05'].to_i
  STDERR.puts quiz
  if quiz == 5
    @ans = "正解"
  else
    @ans = "不正解"
  end
  haml :quiz_kekka05
end

