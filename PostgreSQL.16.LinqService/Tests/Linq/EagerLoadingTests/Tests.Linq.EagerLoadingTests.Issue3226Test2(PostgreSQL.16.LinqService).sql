﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x

