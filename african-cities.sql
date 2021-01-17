--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT NAME
FROM CITY
WHERE CountryCode IN (
    SELECT COUNTRY.CODE
    FROM COUNTRY
    WHERE CONTINENT = 'Africa'
);