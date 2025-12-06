-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	ROW (i.One, i.Two) IN (ROW (1, i.One * 2))

