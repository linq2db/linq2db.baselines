-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id"
FROM
	"MainEntity" t1

