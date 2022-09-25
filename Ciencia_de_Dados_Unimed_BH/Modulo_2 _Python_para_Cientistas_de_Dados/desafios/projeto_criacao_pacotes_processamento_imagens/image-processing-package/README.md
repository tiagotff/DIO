# Projeto: Criação de pacote de Processamento de Imagens

Description. 
The package image_processing-test1 is used to:
>
	Processing:
		- Histogram matching
		- Structural similarity
		- Resize image
	Utils:
		- Read image
		- Save image
		- Plot image
		- Plot result
		- Plot histogram

## Passo a passo

![image](https://user-images.githubusercontent.com/53586684/192152925-fc3e9713-f07a-4bf9-befb-828fd46e7c0d.png)
Fonte: Karina Kato - Machine Learning Engineer/Machine Learning Tech Lead - Take

Após criado o projeto e editado os arquios "setup.py", "requirements.txt" e "README.md" é necessário gerar as distribuições "wheel" e "sdist".
Para isso, você deve:

- Acessar a raiz do seu projeto

- Aplicar os comandos de instalação
``` bash
python -m pip install --upgrade pip
```
``` bash
python -m pip install --user twine
```
``` bash
python -m pip install --user setuptools
```
``` bash
pip install wheel
````
- Aplicar o comando para criar a distribuição
``` bash
python setup.py sdist bdist_wheel
```

Realizada essas etapas com êxito, o próximo passo é a publicação do pacote.
Você precisa ter uma conta no Test Pypi e no Pypi para realizar essa etapa. A seguir os links:

https://test.pypi.org/account/register/
https://pypi.org/account/register/

Primeiro, publique no Teste Pypi, aplicando o seguinte comando:
``` bash
python -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
```
Agora, instale o pacote de teste:
```bash
pip install –-index-url https://test.pypi.org/simple/ image-processing
```
Com tudo testado, é hora de publicar o pacote no Pypi:
```bash
python -m twine upload --repository-url https://upload.pypi.org/legacy/ dist/*
```
Instale o pacote publicado:
```bash
python -m pip install package_name
```

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install image_processing-test1

```bash
pip install image_processing-test1
```

## Author


Original project: by Karina Kato

This project: by Tiago de Freitas Faustino

## License
[MIT](https://choosealicense.com/licenses/mit/)
