-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") IS NULL

