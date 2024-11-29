BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entry')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entry"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entry')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Entry"
			(
				"Id"     CHAR(16) CHARACTER SET OCTETS          NOT NULL,
				"RecSrc" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Value"  Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"e"."Id",
	"e"."RecSrc",
	"e"."Value"
FROM
	"Entry" "e"
WHERE
	"e"."RecSrc" = 'default' AND "e"."Value" = 2007 OR
	"e"."RecSrc" = 'other' AND "e"."Value" = 2008

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entry')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entry"';
END

