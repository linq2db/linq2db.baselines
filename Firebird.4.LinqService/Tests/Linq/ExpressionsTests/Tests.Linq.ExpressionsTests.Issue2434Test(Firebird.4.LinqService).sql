BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2434Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2434Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2434Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2434Table"
			(
				"Id"        Int                                    NOT NULL,
				"FirstName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"LastName"  VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName",
	"t1"."FirstName" || ' ' || "t1"."LastName"
FROM
	"Issue2434Table" "t1"
ORDER BY
	"t1"."FirstName" || ' ' || "t1"."LastName"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2434Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2434Table"';
END

