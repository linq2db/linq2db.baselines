-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
-- Command 1
SELECT
	m_1."Id",
	d."Id",
	"a_ObjectD"."Id",
	"a_ObjectD"."FK"
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d."FK"
		LEFT JOIN "EntityMD" "a_ObjectD" ON d."FKD" = "a_ObjectD"."Id"

-- Command 2
SELECT
	e."Id"
FROM
	"EntityMA" e
