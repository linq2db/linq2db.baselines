-- PostgreSQL.11 PostgreSQL
SELECT
	Power(r."D"::Float, 0.00005::Float)::decimal(18, 4) + r."D"
FROM
	"PowScale" r
LIMIT 2

