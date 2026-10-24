-- Informix.DB2 Informix
SELECT
	i."Value",
	i.Id
FROM
	"Item" i
ORDER BY
	i.Id

-- Informix.DB2 Informix
SELECT
	l.ItemId,
	l.Log
FROM
	ItemLog l
WHERE
	l.ItemId IN (1, 2)
ORDER BY
	l.Id

