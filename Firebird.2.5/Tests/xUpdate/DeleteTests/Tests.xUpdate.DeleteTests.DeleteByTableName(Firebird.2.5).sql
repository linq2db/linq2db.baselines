BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_xxPerson_f_1a')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_f_1a"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_xxPerson_f_1a')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_f_1a"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_f_1a')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPerson_f_1a"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_f_1a')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "xxPerson_f_1a"
			(
				"FirstName"  VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
				"PersonID"   Int                                     NOT NULL,
				"LastName"   VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
				"MiddleName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Gender"     Char(1)                                 NOT NULL,

				CONSTRAINT "PK_xxPerson_f_1a" PRIMARY KEY ("PersonID")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_xxPerson_f_1a')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_xxPerson_f_1a"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_xxPerson_f_1a')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_xxPerson_f_1a" FOR "xxPerson_f_1a"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."PersonID" = GEN_ID("GIDENTITY_xxPerson_f_1a", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson_f_1a"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"xxPerson_f_1a" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"xxPerson_f_1a" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM
	"xxPerson_f_1a" "t1"
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"xxPerson_f_1a" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_xxPerson_f_1a')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_f_1a"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_xxPerson_f_1a')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_f_1a"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_f_1a')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPerson_f_1a"';
END

