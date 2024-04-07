BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableToInsert"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"r"."Id",
	"r"."Value"
FROM
	(
		SELECT 3 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 4, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "r"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "r"."Id"
WHERE
	"t"."Id" IS NULL

BeforeExecute
-- Firebird

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"r"."Id",
	"r"."Value"
FROM
	(
		SELECT 3 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 4, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "r"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "r"."Id"
WHERE
	"t"."Id" IS NULL

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

