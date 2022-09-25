#Scikit-learn

#Etapa 1

#Bibliotecas
from sklearn.datasets import make_regression
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

#gerando uma massa de dados:
x,y=make_regression(n_samples=200, n_features=1, noise=30)

#mostrando no gráfico
plt.scatter(x,y)
plt.show()

#Criação do modelo de Machine Learning
modelo = LinearRegression()


#Etapa 2

#Elemento de pedição
modelo.predict(x)

plt.scatter(x,y)
plt.plot(x, modelo.predict(x), color='red', linewidth=3)
plt.show()

