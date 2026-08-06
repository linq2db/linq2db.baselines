-- PostgreSQL.13 PostgreSQL12
SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

-- PostgreSQL.13 PostgreSQL12
SELECT
	x."Id",
	x."Text"
FROM
	"Item" x

