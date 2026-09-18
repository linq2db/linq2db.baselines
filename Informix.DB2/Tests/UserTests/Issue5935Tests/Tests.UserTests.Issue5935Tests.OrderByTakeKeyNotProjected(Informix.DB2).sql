-- Informix.DB2 Informix
SELECT
	m_1.Id,
	d_1.Log
FROM
	"Item" m_1
		INNER JOIN (
			SELECT
				d.Log,
				ROW_NUMBER() OVER (PARTITION BY d.ItemId ORDER BY d.Id) as rn,
				d.ItemId,
				d.Id
			FROM
				ItemLog d
		) d_1 ON m_1.Id = d_1.ItemId AND d_1.rn <= 2
ORDER BY
	m_1.Id,
	d_1.Id

-- Informix.DB2 Informix
SELECT
	i."Value",
	i.Id
FROM
	"Item" i
ORDER BY
	i.Id

