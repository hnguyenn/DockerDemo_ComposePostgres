# Postgresql & PgAdmin 

## Yêu cầu:
- docker >= 17.12.0+
- docker-compose

## Môi trường
File Compose này chứa các biến môi trường sau:
- `POSTGRES_USER` có giá trị `postgres_demo`
- `POSTGRES_PASSWORD` có giá trị `postgres`
- `PGADMIN_PORT`có giá trị `5050`
- `PGADMIN_DEFAULT_EMAIL` có giá trị `nhunguyenadmin@admin.com`
- `PGADMIN_DEFAULT_PASSWORD` có giá trị `admin`

## Truy cập postgres:
- **Hostname**: `localhost:5432`
- **Username**: `postgres_demo` 
- **Password**: `postgre` 

## Truy cập PgAdmin:
- **URL**: `http://localhost:5050`
- **Username**: `nhunguyenadmin@admin.com` 
- **Password**: `admin` 

## Thêm một server mới trong PgAdmin:
- **Host name/address**: `postgres_demo`
- **Port**: `5432`
- **Username**: `postgres_demo`,
- **Password**: `postgres`,
