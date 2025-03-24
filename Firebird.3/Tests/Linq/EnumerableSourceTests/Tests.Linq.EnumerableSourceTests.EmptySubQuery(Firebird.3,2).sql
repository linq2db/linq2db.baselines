﻿BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"TableToInsert" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(SELECT NULL "Id", NULL "Value" FROM rdb$database WHERE 1 = 0) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

