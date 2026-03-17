-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Id",
	d."Id",
	d.FK
FROM
	(
		SELECT DISTINCT
			a_ObjectBOptional."Id"
		FROM
			"EntityA" e
				LEFT JOIN "EntityB" a_ObjectBOptional ON e.FK = a_ObjectBOptional."Id"
	) m_1
		INNER JOIN "EntityD" d ON m_1."Id" = d.FK

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	a_ObjectBOptional."Id",
	a_ObjectBOptional."Id"
FROM
	"EntityA" e
		LEFT JOIN "EntityB" a_ObjectBOptional ON e.FK = a_ObjectBOptional."Id"

