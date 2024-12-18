BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserStruct')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserStruct"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Residence_City VarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street VarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer -- Int32
SET     @Residence_Building = 13

INSERT INTO "UserStruct"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
VALUES
(
	@Residence_City,
	@Name,
	@Residence_Street,
	@Residence_Building
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"u"."user_name",
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"UserStruct" "u"
WHERE
	"u"."city" = 'Springwood' AND
	"u"."city" IS NOT NULL AND
	"u"."street" = 'Elm Street' AND
	"u"."street" IS NOT NULL AND
	"u"."building_number" = 13
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserStruct')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserStruct"';
END

