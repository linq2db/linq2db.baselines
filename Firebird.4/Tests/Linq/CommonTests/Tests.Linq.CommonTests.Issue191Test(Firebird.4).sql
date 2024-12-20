BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "User"
			(
				"FirstName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Status"    Int
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"user_1"."FirstName",
	"user_1"."Status"
FROM
	"User" "user_1"
WHERE
	"user_1"."Status" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

