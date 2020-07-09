# README

App desarrollada en: ruby 2.5 on Rails docker container.
Propósito: servir de muro colaborativo para la comunidad Conecta y Colabora

============================================================
Log de construcción:

Instalación de gemas: 
    gem 'font-awesome-rails'
    gem 'groupdate'
    gem 'rolify'
    gem 'acts_as_votable', '~> 0.11.1'
    gem 'bootstrap', '~> 4.3.1'
    gem 'cancancan'
    gem 'carrierwave', '~> 1.0'
    gem 'chartkick'
    gem 'omniauth-google-oauth2'
    gem 'dotenv-rails', groups: [:development, :test]
    gem 'devise'

#docker-compose run web rails generate devise:install

Install Oauth: https://github.com/zquestz/omniauth-google-oauth2


#docker-compose run web rails generate scaffold Wellcome name:string location:string

docker-compose run web rails generate scaffold Subsidio nombre:string institucion:string descripcion:text modalidad:string inicio:datetime cierre:datetime monto:int perfil:text bases:string
docker-compose run web rails generate scaffold Empresa nombre:string tamaño:string tipo:string rubro:string web:string user:references
docker-compose run web rails generate scaffold Proyecto nombre:string etapa:string descripcion:text proposito:string web:string user:references
