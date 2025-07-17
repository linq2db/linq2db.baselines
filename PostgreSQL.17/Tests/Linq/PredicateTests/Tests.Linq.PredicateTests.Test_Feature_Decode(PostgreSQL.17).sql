BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."One", 0, 1) = 0

