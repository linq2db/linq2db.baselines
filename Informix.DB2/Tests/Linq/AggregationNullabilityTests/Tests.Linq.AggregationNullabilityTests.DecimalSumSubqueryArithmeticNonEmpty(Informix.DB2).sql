-- Informix.DB2 Informix

SELECT FIRST 1
	o.Anchor - Nvl((
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
	o.Id = 1

