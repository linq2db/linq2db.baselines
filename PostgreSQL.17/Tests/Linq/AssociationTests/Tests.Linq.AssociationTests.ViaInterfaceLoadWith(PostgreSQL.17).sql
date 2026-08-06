-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id"
FROM
	"MainEntity" t1

