﻿BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"Issue3360WithEnum" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('THIS_IS_TWO' AS VarChar(50) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360WithEnum" "r" ON "t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

