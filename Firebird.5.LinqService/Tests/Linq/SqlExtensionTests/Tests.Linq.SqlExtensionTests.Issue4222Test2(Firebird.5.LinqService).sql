BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entry')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entry"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entry')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Entry"
			(
				"Id"     BINARY(16)                             NOT NULL,
				"RecSrc" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Value"  Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entry')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entry"';
END

