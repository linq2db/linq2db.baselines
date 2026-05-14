-- Informix.DB2 Informix

SELECT FIRST 1
	1000 - Nvl((
		SELECT
			SUM(i.DecimalValue)
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), 0)
FROM
	"Outer" o
WHERE
	o.Id = 2

