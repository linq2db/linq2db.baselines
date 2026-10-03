-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	m_1."Id",
	d."Log"
FROM
	"Item" m_1
		INNER JOIN "ItemLog" d ON m_1."Id" = d."ItemId"
ORDER BY
	d."Id",
	m_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

