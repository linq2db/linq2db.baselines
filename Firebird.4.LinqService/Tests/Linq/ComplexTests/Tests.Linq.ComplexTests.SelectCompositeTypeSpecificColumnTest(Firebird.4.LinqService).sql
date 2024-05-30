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
				"city"            VarChar(255) CHARACTER SET UNICODE_FSS,
				"user_name"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"street"          VarChar(255) CHARACTER SET UNICODE_FSS,
				"building_number" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"u"."city"
FROM
	"User" "u"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"u"."street"
FROM
	"User" "u"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

