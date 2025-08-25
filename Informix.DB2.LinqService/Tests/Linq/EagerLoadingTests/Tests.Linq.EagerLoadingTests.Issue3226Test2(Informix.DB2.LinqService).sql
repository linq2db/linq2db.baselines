BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	m_1.Id,
	d."Value"
FROM
	"Item" m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.Id,
	x.Text
FROM
	"Item" x

