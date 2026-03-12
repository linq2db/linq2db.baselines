-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1."FK"
FROM
	(
		SELECT DISTINCT
			d."Id",
			e."Id" as "Id_1"
		FROM
			"EntityMA" e
				INNER JOIN "EntityMB" d ON e."Id" = d."FK"
	) m_1
		INNER JOIN "EntityMC" d_1 ON m_1."Id" = d_1."FK"

-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id"
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d."FK"

-- PostgreSQL.15 PostgreSQL

SELECT
	e."Id"
FROM
	"EntityMA" e

