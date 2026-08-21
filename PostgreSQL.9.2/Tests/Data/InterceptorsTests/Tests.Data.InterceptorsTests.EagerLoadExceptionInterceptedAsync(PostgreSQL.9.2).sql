-- PostgreSQL.9.2 PostgreSQL
SELECT
	m_1."Id",
	d."Id",
	d."ParentId"
FROM
	"EagerExceptionParent" m_1
		INNER JOIN "EagerExceptionChild" d ON m_1."Id" = d."ParentId"

