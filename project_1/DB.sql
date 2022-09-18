CREATE TABLE international_debt
 (country_name character varying(50),
  country_code character varying(50),
  indicator_name text,
  indicator_code text,
  debt numeric);

COPY international_debt FROM 'C:\ALL\test\international_debt.csv' DELIMITER ',' CSV HEADER;