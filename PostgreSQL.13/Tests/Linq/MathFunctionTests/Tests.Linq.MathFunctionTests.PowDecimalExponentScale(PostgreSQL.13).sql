-- PostgreSQL.13 PostgreSQL12
SELECT
	Power(r."D"::Float, 0.00005::Float)::decimal(18, 4) + r."D"
FROM
	"PowScale" r
LIMIT 2

