-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d."Value"
FROM
	"Item" m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Text
FROM
	"Item" x

