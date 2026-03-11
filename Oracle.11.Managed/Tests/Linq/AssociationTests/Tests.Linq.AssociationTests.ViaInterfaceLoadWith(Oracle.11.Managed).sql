-- Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"MainEntity" t1

