-- Firebird.3 Firebird3

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	(
		SELECT 2 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 3, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

-- Firebird.3 Firebird3

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	(
		SELECT 2 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 3, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

