-- Informix.DB2 Informix

SELECT
	SUM(i.DecimalValue)
FROM
	"Inner" i
WHERE
	i."Group" = 1

