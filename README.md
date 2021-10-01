## Requirements

Please check if all is already installed: 
- docker
- docker-compose
- composer
- php 

## Installation

### Install docker
```bash
sudo apt install docker
```
### Install docker-compose
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
### Run docker-compose 
```bash
sudo docker-compose up -d
```
### Install composer
```bash
composer install
```
### Run php artisan
```bash
sudo php artisan migrate
```
### Make env
```bash
make env
make init
make start 
```


## Usage

Add Makefile
Available commands:
- make env
- make init
- make migrate
- make seed
- make start
- make build
- make stop
- make restart
- make logs
- make clear


## Contributing

Alexis LOURS, Prado RASOANIRAHINA, Julien ARBELLINI

## Repositories

- [Github](https://github.com/alexislours/groupe-9-iw3-4)
- [Gitlab](https://gitlab.com/iw-intensive-week-1-2021/groupe-9-iw3-4)

## License
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
