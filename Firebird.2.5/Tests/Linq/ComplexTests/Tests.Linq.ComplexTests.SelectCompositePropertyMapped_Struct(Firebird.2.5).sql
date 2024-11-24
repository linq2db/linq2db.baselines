BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserStruct')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserStruct"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserStruct')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UserStruct"
			(
				"city"            VarChar(255) CHARACTER SET UNICODE_FSS,
				"user_name"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"street"          VarChar(255) CHARACTER SET UNICODE_FSS,
				"building_number" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "UserStruct"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
SELECT CAST('Springwood' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Freddy' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Elm Street' AS VarChar(255) CHARACTER SET UNICODE_FSS),13 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2 DISTINCT
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"UserStruct" "u"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserStruct')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserStruct"';
END

