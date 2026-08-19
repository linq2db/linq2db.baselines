-- PostgreSQL.9.2 PostgreSQL
SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."Id"
FROM
	"MainEntity" x

