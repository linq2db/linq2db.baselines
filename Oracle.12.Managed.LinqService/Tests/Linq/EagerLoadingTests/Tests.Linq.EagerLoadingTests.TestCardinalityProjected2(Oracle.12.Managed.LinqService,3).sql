BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1.FK
FROM
	(
		SELECT DISTINCT
			d."Id",
			t1."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					e."Id"
				FROM
					"EntityMA" e
			) t1
				INNER JOIN "EntityMB" d ON t1."Id" = d.FK
	) m_1
		INNER JOIN "EntityMC" d_1 ON m_1."Id" = d_1.FK

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	a_ObjectD."Id",
	a_ObjectD.FK
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d.FK
		LEFT JOIN "EntityMD" a_ObjectD ON d.FKD = a_ObjectD."Id"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	e."Id"
FROM
	"EntityMA" e

