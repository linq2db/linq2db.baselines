﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
			(
				SELECT 3 AS "Id", 'Janet' AS "Value", 3 AS "Id0", 'Janet' AS "Value0" FROM DUMMY
				UNION ALL
				SELECT 4, 'Doe', 4, 'Doe' FROM DUMMY) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

