BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Isue2424Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Isue2424Table"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Isue2424Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Isue2424Table"
			(
				"Id"       Int                                    NOT NULL,
				"StrValue" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
SELECT 1,'1' FROM rdb$database UNION ALL
SELECT 3,'3' FROM rdb$database UNION ALL
SELECT 5,'5' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Isue2424Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Isue2424Table"';
END

