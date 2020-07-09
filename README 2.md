# README

Grupo 36

Integrantes:
- Nicolas Araya
- Nicolas Riquelme
- Marcelo Escudero

Link app: https://g-36.herokuapp.com/

Entrega 0 en: /documentos/Relatos_de_usuario-grupo_36.docx

============================================================
Comandos Importantes:

LOG INSTALL:

install devise <!-- Se agrega a Gemfile -->
gem 'devise'

Create Users:

docker-compose run web rails generate scaffold User name:string mail:string

Run migrations
# docker-compose run web rake db:migrate

===============================================================================
Install Devise
===============================================================================

#docker-compose run web rails generate devise:install

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       docker-compose run web rails g devise:views
  5. Create the User model from Devise:

       docker-compose run web rails generate devise User
===============================================================================
# Create others models
===============================================================================

docker-compose run web rails generate scaffold Campus name:string location:string
docker-compose run web rails generate scaffold Classroom name:string location:string d_rank:int r_rank:int e_rank:int campus:references
docker-compose run web rails generate scaffold Class name:string code:string user:references
docker-compose run web rails generate scaffold Post title:string author:string content:text description:text reputation_rank:int class:references user:references

docker-compose run web rails generate scaffold Comment author:string content:text reputation_rank:int user:references post:references
docker-compose run web rails generate scaffold Event author:string type:string classroom:references class:references

Mod Request
docker-compose run web rails generate scaffold Mod_Req file:string user:references class:references