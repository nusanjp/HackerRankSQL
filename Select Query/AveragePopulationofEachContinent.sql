SELECT COUNTRY.continent,FLOOR(AVG(CITY.Population))
FROM city CITY
INNER JOIN country COUNTRY 
ON CITY.countrycode = COUNTRY.code
GROUP BY COUNTRY.continent;