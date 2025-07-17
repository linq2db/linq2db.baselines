BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"MainEntity" t1

