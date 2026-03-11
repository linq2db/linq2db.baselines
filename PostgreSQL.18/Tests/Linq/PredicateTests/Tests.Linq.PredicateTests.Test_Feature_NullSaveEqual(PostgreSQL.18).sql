-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" <=> r."One"

