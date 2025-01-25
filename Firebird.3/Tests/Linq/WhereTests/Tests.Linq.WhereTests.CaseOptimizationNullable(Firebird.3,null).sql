BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WhereWithString"
			(
				"Id"          Int                                    NOT NULL,
				"StringValue" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
SELECT 1,CAST('Str1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

