# Projeto: Criacao de pacote de Processamento de Imagens

Descricao: O pacote image_exercise e usado para:
>
	Processing:
		- Correspondencia de histograma
		- Semelhanca estrutural
		- Redimensionar imagem
	Utils:
		- Ler imagem
		- Salvar imagem
		- Plotar imagem
		- Resultado da plotagem
		- Plotar histograma
## Overview (template)
Este e um overview do que faremos:

![image](https://user-images.githubusercontent.com/53586684/192152925-fc3e9713-f07a-4bf9-befb-828fd46e7c0d.png)

Fonte: Karina Kato - Machine Learning Engineer/Machine Learning Tech Lead - Take

## Passo a passo
### 1. Criar um projeto
Voce pode realizar um fork deste projeto para utiliza-lo como modelo. Ele ja segue a organizacao da imagem apresentada acima.

### 2. Editar os arquivos "setup.py", "requirements.txt" e "README.md"
Apos criado o projeto e editado os arquivos "setup.py", "requirements.txt" e "README.md" e necessario gerar as distribuicoes "wheel" e "sdist".
Para isso, voce deve:

### 3. Acessar a raiz do seu projeto
Acesse a raiz do seu projeto para aplicar os proximos passos.

### 4. Aplicar os comandos de instalacao
No seu terminal, aplique os seguintes comandos:

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

### 5. Aplicar o comando para criar a distribuicao
Crie a distribuicao, aplicando o seguinte comando:

``` bash
python setup.py sdist bdist_wheel
```
### 6. Publicar pacote
Realizada as etapas anteriores com exito, o proximo passo e a publicacao do pacote.
Voce precisa ter uma conta no Test Pypi e no Pypi para realizar essa etapa. A seguir os links:

https://test.pypi.org/account/register/

https://pypi.org/account/register/

### Test Pypi
#### 6.1. Primeiro, publique no Teste Pypi, aplicando o seguinte comando:
``` bash
python -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
```
#### 6.2. Agora, instale o pacote de teste:
```bash
pip install -i https://test.pypi.org/simple/ image_exercise
```

### Pypi
#### 6.3. Com tudo testado, e hora de publicar o pacote no Pypi:
```bash
python -m twine upload --repository-url https://upload.pypi.org/legacy/ dist/*
```
#### 6.4. Instale o pacote publicado:
Utilize o gerenciador de pacotes [pip](https://pip.pypa.io/en/stable/) para instalar image_exercise

```bash
pip install image-exercise
```
### Utilizando o pacote
Neste link você encontra as imagens utilizadas

E aqui você encontra o código para teste

## Autor

Projeto original: by Karina Kato

Este exercicio: by Tiago de Freitas Faustino

Este projeto tem o objetivo apenas de exercitar a criacao publicacao e utilizacao de pacotes.
Para este fim, como ainda nao tenho um projeto proprio, foram realizados apenas pequenos 
ajustes no projeto original de Karina Kato.

## Licenca
[MIT](https://choosealicense.com/licenses/mit/)
