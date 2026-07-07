-- PostgreSQL.14 PostgreSQL.13
-- Batch 1
SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

-- Batch 2
SELECT
	t1."Id"
FROM
	"MainEntity" t1
