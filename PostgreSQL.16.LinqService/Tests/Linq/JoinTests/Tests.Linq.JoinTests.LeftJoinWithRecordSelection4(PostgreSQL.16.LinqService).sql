﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	fact_1."Id",
	"leftTag"."Id",
	"leftTag"."FactId",
	"leftTag"."Name"
FROM
	"Fact" fact_1
		LEFT JOIN "Tag" "leftTag" ON "leftTag"."FactId" = fact_1."Id"
WHERE
	fact_1."Id" > 3
ORDER BY
	fact_1."Id"

