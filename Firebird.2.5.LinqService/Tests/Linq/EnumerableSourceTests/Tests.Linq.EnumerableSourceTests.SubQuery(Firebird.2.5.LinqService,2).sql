BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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
				SELECT 3 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
				UNION ALL
				SELECT 4, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

