-- PostgreSQL.18
-- Batch 1
SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

-- Batch 2
SELECT
	x."Id",
	x."Text"
FROM
	"Item" x
