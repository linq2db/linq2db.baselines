﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	f."Id",
	t."Id",
	t."FactId",
	t."Name"
FROM
	"Fact" f
		LEFT JOIN "Tag" t ON t."FactId" = f."Id"
WHERE
	f."Id" > 3
ORDER BY
	f."Id"

