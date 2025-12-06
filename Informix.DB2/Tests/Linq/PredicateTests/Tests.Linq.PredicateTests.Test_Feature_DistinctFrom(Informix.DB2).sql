-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.One IS DISTINCT FROM r.One

