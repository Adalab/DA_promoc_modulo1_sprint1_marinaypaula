# Operadoras MIN(), MAX(), AVG() Y COUNT().alter
# Productos más caros de nuestra base de datos y los más baratos. Dales el alias lowest_price
# y highest_price

SELECT MIN(unit_price) AS lowest_price, MAX(unit_price) AS highest_price
FROM products;

# Nos piden que añadamos otra consulta para calcular el número de productos y el precio medio
# de todos ellos

SELECT COUNT(product_id), AVG(unit_price)
FROM products;

# AVG: 28.86

# Sacad la máxima y la mínima carga de los pedidos de EEUU. Mínima y máxima cantidad de carga para
# un pedido freight enviado a RU.

SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country = 'UK';

# MAX(freight) 288.43
# MIN(freight) 0.9

# ¿Qué productos se venden por encima del precio medio? Ordenar los resultados por su precio de mayor
# a menor.
# Sabemos que el precio medio es 28.86

SELECT product_name
FROM products
WHERE unit_price > 28.86
ORDER BY (unit_price) DESC;

# ¿Qué productos se han descontinuado? El atributo discontinued es un booleano, si es =1, el
# producto ha sido descontinuado.

SELECT COUNT(discontinued)
FROM products
WHERE discontinued = 1;

# No hay productos descontinuados.

# Detalles de los productos de la query entry. Nos piden product_id y product_name de aquellos
# productos no discontinuados, limitándonos a los 10 con el id más elevado.alter

SELECT product_id, product_name
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC limit 10;