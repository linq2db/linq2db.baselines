BeforeExecute
-- Firebird.5 Firebird4

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
		SELECT 3 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 4, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

BeforeExecute
-- Firebird.5 Firebird4

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
		SELECT 3 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 4, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

