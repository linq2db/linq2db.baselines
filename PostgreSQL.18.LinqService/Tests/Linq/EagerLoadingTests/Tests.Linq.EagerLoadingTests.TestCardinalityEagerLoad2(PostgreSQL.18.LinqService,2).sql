﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."FK",
	d."FKD",
	"a_ObjectD"."Id",
	"a_ObjectD"."FK"
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d."FK"
		LEFT JOIN "EntityMD" "a_ObjectD" ON d."FKD" = "a_ObjectD"."Id"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."FK",
	t1."Id"
FROM
	"EntityMA" t1

