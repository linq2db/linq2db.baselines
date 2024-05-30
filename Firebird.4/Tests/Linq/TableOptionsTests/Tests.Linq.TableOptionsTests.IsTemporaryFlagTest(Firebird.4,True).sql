BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsTemporaryTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "IsTemporaryTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsTemporaryTable" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsTemporaryTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsTemporaryTable"';
END

