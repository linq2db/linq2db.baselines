BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4460Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4460Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4460Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4460Table"
			(
				"Id"      Int                                    NOT NULL,
				"Code"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Surname" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
SELECT 1,CAST('GrandChild' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Tom' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Black' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Name",
	"t1"."Surname"
FROM
	"Issue4460Table" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4460Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4460Table"';
END

