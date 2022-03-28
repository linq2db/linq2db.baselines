BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT 2,CAST('Janet' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3,'Doe' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"TableToInsert" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 2 AS "Id" FROM rdb$database
					UNION ALL
					SELECT 3 FROM rdb$database) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"t1"."Id" = "t"."Id"
	)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

