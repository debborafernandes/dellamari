source 'https://rubygems.org'

gem 'rails', '3.2.3' # Framework Web para Ruby
gem 'mysql2'         # Base de dados

gem 'elasticsearch'  # Para busca Textual
gem 'tire'           # Para DLS's da busca textual

gem 'jquery-rails'   # jQuery framework

gem 'activeadmin'    # Dashboard interface

group :assets do
  gem 'sass-rails',   '~> 3.2.3'         # Permite a utilizacao de SASS
  gem 'coffee-rails', '~> 3.2.1'         # Permite a utilizacao de CoffeeScript
  gem 'therubyracer', :platform => :ruby # Compila os assets
  gem 'uglifier', '>= 1.0.3'             # Compressor de JS
  gem 'twitter-bootstrap-rails'          # Aplica o Bootstrap template
end

group :development do
  gem 'pry'          # Permite debugar no server
end

group :development, :test do
  gem 'rspec-rails'               # Suite de Testes
  gem 'shoulda-matchers'          # Complemento ao RSpec para comparacao de resultados
  gem 'factory_girl_rails'        # Cria os objetos para teste
  gem 'forgery'                   # Gera dados usados nas factories
  # Testing helpers
  gem 'guard-rspec'               # Automatiza a execucao do RSpec ao alterar os arquivos
  gem 'rb-inotify'                # Mostra os resultados do RSpec ao ser rodado pelo guard na interface de notificacao do Sistema Operacional
  gem 'simplecov-rcov'            # Mostra os resultados de cobertura dos testes
end
