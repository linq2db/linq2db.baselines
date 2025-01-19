BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"TableToInsert"
SET
	"Value" = (
		SELECT
			"r_1"."Value"
		FROM
			"TableToInsert" "t_1"
				INNER JOIN (
					SELECT 3 AS "Id", CAST('Janet Updated' AS VARCHAR(13)) AS "Value" FROM rdb$database
					UNION ALL
					SELECT 4, CAST('Doe Updated' AS VARCHAR(11)) FROM rdb$database) "r_1" ON "t_1"."Id" = "r_1"."Id"
		WHERE
			"TableToInsert"."Id" = "t_1"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 3 AS "Id", CAST('Janet Updated' AS VARCHAR(13)) AS "Value" FROM rdb$database
					UNION ALL
					SELECT 4, CAST('Doe Updated' AS VARCHAR(11)) FROM rdb$database) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"TableToInsert"."Id" = "t"."Id"
	)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

