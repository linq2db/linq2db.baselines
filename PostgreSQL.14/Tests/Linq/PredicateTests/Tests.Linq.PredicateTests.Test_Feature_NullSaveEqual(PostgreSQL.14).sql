-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" <=> r."One"

