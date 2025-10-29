-- Informix.DB2 Informix

SELECT
	x.Country,
	x."State"
FROM
	Issue3631Table x
WHERE
	ROW (x.Country, x."State") IN (ROW ('US', 'CA'), ROW ('US', 'NY'))

