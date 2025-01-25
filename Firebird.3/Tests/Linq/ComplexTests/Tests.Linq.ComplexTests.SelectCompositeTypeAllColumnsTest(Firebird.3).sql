BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "User"
			(
				"city"            VarChar(255) CHARACTER SET UNICODE_FSS,
				"user_name"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"street"          VarChar(255) CHARACTER SET UNICODE_FSS,
				"building_number" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "User"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
SELECT CAST('Springwood' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Freddy' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Elm Street' AS VarChar(255) CHARACTER SET UNICODE_FSS),13 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."user_name",
	"t1"."city",
	"t1"."street",
	"t1"."building_number"
FROM
	"User" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

