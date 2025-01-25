BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
		SELECT 2 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 3, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "t1"
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
		SELECT 2 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
		UNION ALL
		SELECT 3, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

