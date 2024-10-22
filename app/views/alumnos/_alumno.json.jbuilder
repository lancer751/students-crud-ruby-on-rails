json.extract! alumno, :id, :name, :lastname, :email, :dni, :address, :edad, :image, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
json.image url_for(alumno.image)
