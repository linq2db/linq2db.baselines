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
	k_1."item",
	d.Id,
	d.ItemId,
	d.Log
FROM
	(
		SELECT 1::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 2::Int FROM table(set{1})) k_1
		INNER JOIN ItemLog d ON k_1."item" = d.ItemId
ORDER BY
	d.Id

