BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x

