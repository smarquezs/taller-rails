crear una nueva aplicación
rails new myapp --toma por defecto sqlite

rails new myapp -d mysql -- Aplicación con mysl
rails new myapp -d postgresql -- Aplicación con postgreSQL

Descargar instalador de rails para windows y mac
http://railsinstaller.org/en

Instalar rails
http://rubyonrails.org.es/instala.html

Documentación de Rails
Pagina oficial: http://rubyonrails.org/


Documentación es español:
Blog: http://fernando-gaitan.com.ar/ruby-on-rails-parte-16-relaciones-en-los-modelos/

Youtube: http://www.youtube.com/results?search_query=ruby+on+rails+tutorial+codigofacilito

Gemas utilizadas en esta aplicación
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
Se debe crear una tabla con email, password_digest (password_digest es el campo que guardará las pasword encriptada)

gem 'jquery-rails', para la utilización de ajax, em este taller se crea una aplicaicón simple para buscar posts asociados a un usuario, para esto de guardó el user_id dentro de la tabla post y se obtiene de la sessión cuand el usuario se autentifica en el sistema.

En el controlador sessions_controller se crea (log in) y se destruye (log out) la sesión

Comandos básicos

rails sserver o rails s corre el servidor en el puerto 8000, para ver la aplicación debe ir a la url: http://localhost:3000

rails console o rails s, abre la consola en donde se pueden realizar operaciones, como realizar busquedas en las tablas instanciando el modelo correspondiente, si quieres ver todod los campos de la tabla posts, realizas lo siguiente:

p = Post.all y enter

rails g scaffold modelo_en_plural campo1:tipo campo2:tipo crea un scaffold o vista CRUD (create, read, update y delete) del modelo

en caso que quiera eliminar un scaffold, simplemente ejecute rails d scaffold nombre

rails g model modelo_en_singular campo1:tipo campo2:tipo crea un modelo y una migración de la tabla correpondiente al modelo con 2 campos.

Ruby on rails realiza la migración desde el modelo, Clase que extiende de ActiveController::Base hacía la base de datos, pueden consultar más sobre ActiveRecord migrations en: http://guides.rubyonrails.org/migrations.html

Para migrar la base de datos ejecute en la consola rake db:migrate

Si desean empezar en este mundo de Rails, puden empezar con el getting started que se encuentra en: http://guides.rubyonrails.org/getting_started.html cuyo tutorial comienza desde la instalación del frameworks.

si desean pronar esta sencilla aplicación, descargan la aplicación, teniendo instalado ruby y rails, lo descomprimen un una carpeta levantan el servidor (dentro de la carpeta de la aplicación) ejecutanto rails s y luego van a la url http://localhost:3000/sign_in

email: admin@admin.cl
pass: 123qwe

Espero que esto haya sido de utilidad :)






