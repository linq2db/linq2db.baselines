-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") IS NULL

