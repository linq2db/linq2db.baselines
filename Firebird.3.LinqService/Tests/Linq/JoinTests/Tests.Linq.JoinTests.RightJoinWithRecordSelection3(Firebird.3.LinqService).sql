﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"f"."Id",
	"ft"."Id",
	"ft"."FactId",
	"ft"."Name"
FROM
	"Tag" "ft"
		RIGHT JOIN "Fact" "f" ON "ft"."FactId" = "f"."Id"
WHERE
	"f"."Id" > 3

