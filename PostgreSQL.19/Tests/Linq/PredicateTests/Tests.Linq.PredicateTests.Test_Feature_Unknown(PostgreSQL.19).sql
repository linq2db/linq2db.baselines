-- PostgreSQL.19 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") = UNKNOWN

