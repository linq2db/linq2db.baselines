-- PostgreSQL.13 PostgreSQL13

SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

-- PostgreSQL.13 PostgreSQL13

SELECT
	t1."Id"
FROM
	"MainEntity" t1

