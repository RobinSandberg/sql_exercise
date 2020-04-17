# SQL Join exercise
#

#
# 1: Get the cities with a name starting with ping sorted by their population with the least populated cities first
# SELECT name, Population FROM city WHERE name LIKE 'ping%' ORDER BY Population asc;
#
# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first
# SELECT * FROM city where name like 'ran%' ORDER BY population desc;
#
# 3: Count all cities
# SELECT Count(*) FROM city;
#
# 4: Get the average population of all cities
# SELECT avg(population) FROM city;
#
# 5: Get the biggest population found in any of the cities
# SELECT max(population) FROM city;
#
# 6: Get the smallest population found in any of the cities
# SELECT min(population) FROM city;
#
# 7: Sum the population of all cities with a population below 10000
# SELECT sum(population) FROM city where population < 10000;
#
# 8: Count the cities with the countrycodes MOZ and VNM
# SELECT count(*) FROM city WHERE countrycode LIKE 'moz' OR CountryCode LIKE 'vnm';
#
# 9: Get individual count of cities for the countrycodes MOZ and VNM
# SELECT count(*) FROM city WHERE countrycode LIKE 'moz' OR CountryCode LIKE 'vnm' GROUP BY countrycode;
#
# 10: Get average population of cities in MOZ and VNM
# SELECT avg(Population) FROM city WHERE countrycode LIKE 'moz' OR CountryCode LIKE 'vnm';
#
# 11: Get the countrycodes with more than 200 cities
# SELECT countrycode,Count(name) FROM city GROUP BY countrycode HAVING Count(name)>200;
#
# 12: Get the countrycodes with more than 200 cities ordered by city count
# SELECT countrycode,Count(name) FROM city GROUP BY countrycode HAVING Count(name)>200 ORDER BY Count(name) asc;
#
# 13: What language(s) is spoken in the city with a population between 400 and 500 ?
# SELECT Language FROM city INNER JOIN countrylanguage on city.countrycode = countrylanguage.CountryCode where Population >= 400 AND Population <= 500; 
#
# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them
# SELECT name,Language FROM city INNER JOIN countrylanguage on city.countrycode = countrylanguage.CountryCode where Population >= 500 AND Population <= 600; 
#
# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)
# SELECT Name FROM city WHERE CountryCode = (SELECT countrycode FROM city WHERE Population = 122199);
#
# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
# SELECT name FROM city WHERE CountryCode = (SELECT countrycode FROM city WHERE Population = 122199) AND Population != 122199;
#
# 17: What are the city names in the country where Luanda is capital?
# SELECT Name FROM city WHERE CountryCode = (SELECT countrycode FROM city WHERE name = 'Luanda');
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
# SELECT city.name FROM city JOIN country ON city.CountryCode = country.Code where region = (SELECT region FROM country where country.code = (SELECT countrycode FROM city WHERE name = 'Yaren')) AND Capital = city.ID;
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
# SELECT distinct Language FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage on city.CountryCode = countrylanguage.CountryCode where region = (SELECT region FROM country where country.code = (SELECT countrycode FROM city WHERE name = 'Riga'));
#
# 20: Get the name of the most populous city
# SELECT name FROM city WHERE Population = (SELECT max(Population) FROM city);
