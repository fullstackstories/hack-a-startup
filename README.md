# English version

(see spanish version below)

Repository containing the web-app developed during the event [hack-a-startup](https://fullstackstories.github.io/2019/07/07/hack-a-startup.html) that took place at the CFTIC in Getafe (Madrid).

It's a proof of concept of a responsive web application to control irrigation system of a farm.

This simple app was developed in 3 hours and presented on july 5th 2019. I won the first prize with it!

## Versions

Application was developed using ruby 2.6.2 and rails 5.2.3. Those were the stable versions at the time the event took place)

You need to have a [working installation of ruby 2.6.2](https://www.ruby-lang.org/en/documentation/installation/) for the application to run in your machine.

## Install and run the applicaiton

* Clone the repository

```
git clone https://github.com/fullstackstories/hack-a-startup.git
```

* Install the gems

```
bundle install
```

* Run the database migrations

```
bin/rails db:migrate
```

* Seed the database

```
bin/rails db:seed
```

* Start de application

```
bin/rails s
```

## Access to the admin interface

Open a web browser and point to http://localhost:3000/admin

Use ```admin@example.com``` as username nad ```password``` as password.

## Access to the user interface

Open a web browser and point to http://localhost:3000

Create a new crop (cultivo) and have a look at the interface for the farmer.

# Spanish version

Repositorio con el código que desarrollé en el evento ["hack-a-startup"](https://fullstackstories.github.io/2019/07/07/hack-a-startup.html) que tuvo lugar en el CFTIC de Getafe.

Se trata de una prueba de concepto de lo que sería una aplicación para controlar el riego de un cultivo.

Esta pequeña aplicación se presentó el sábado 5 de julio y consiguió el primer premido del hackathon.

## Versiones utilizadas

La aplicación se desarrolló en ruby 2.6.2 y rails 5.2.3 (versiones estables en el momento en el que se desarrolló el evento)

Para que la aplicación funcione es necesario disponer de [ruby 2.6.2 correctamente instalado](https://www.ruby-lang.org/es/documentation/installation/) en tu máquina.

## Instalar e ejecutar la aplicación

* Clona el repositorio

```
git clone https://github.com/fullstackstories/hack-a-startup.git
```

* Instala las gemas

```
bundle install
```

* Migra la base de datos (sqlite)

```
bin/rails db:migrate
```

* Instala los datos de prueba

```
bin/rails db:seed
```

* Levanta la aplicación

```
bin/rails s
```

## Acceso a la interfaz administrativa

Abre un navegador web a apuntalo a la URL http://localhost:3000/admin

Utiliza ```admin@example.com``` como usuario y ```password``` como contraseña.

## Acceso a la interfaz de usuario
Abre un navegador web a apuntalo a la URL http://localhost:3000

Una vez aquí podrás crear un cultivo y ver el prototipo de la interfaz para el agricultor.
