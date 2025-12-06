-- Firebird.4 Firebird4

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
				SELECT 2 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
				UNION ALL
				SELECT 3, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

