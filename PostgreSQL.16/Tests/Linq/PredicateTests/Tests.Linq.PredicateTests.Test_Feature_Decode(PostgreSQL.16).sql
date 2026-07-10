-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."One", 0, 1) = 0

