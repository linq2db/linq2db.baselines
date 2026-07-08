-- PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" <=> r."One"

