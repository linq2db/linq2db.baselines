-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" <=> r."One"

