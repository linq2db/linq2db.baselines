-- Informix.DB2 Informix
SELECT
	m_1.Id,
	d.Id,
	d.ItemId,
	d.Log
FROM
	"Item" m_1
		INNER JOIN ItemLog d ON m_1.Id = d.ItemId
ORDER BY
	d.Id,
	m_1.Id

-- Informix.DB2 Informix
SELECT
	i."Value",
	i.Id
FROM
	"Item" i
ORDER BY
	i.Id

