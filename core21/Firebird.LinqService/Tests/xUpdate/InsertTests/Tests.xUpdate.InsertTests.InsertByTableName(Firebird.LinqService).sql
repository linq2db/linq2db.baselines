BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_xxPerson_fl_35')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_fl_35"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_xxPerson_fl_35')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_fl_35"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_fl_35')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPerson_fl_35"';
END

BeforeExecute
-- Firebird

CREATE TABLE "xxPerson_fl_35"
(
	"FirstName"  VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
	"PersonID"   Int                                     NOT NULL,
	"LastName"   VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
	"MiddleName" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Gender"     Char(1)                                 NOT NULL,

	CONSTRAINT "PK_xxPerson_fl_35" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Firebird

CREATE GENERATOR "GIDENTITY_xxPerson_fl_35"

BeforeExecute
-- Firebird

CREATE TRIGGER "TIDENTITY_xxPerson_fl_35" FOR "xxPerson_fl_35"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."PersonID" = GEN_ID("GIDENTITY_xxPerson_fl_35", 1);
END

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson_fl_35"
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
-- Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "xxPerson_fl_35"
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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "xxPerson_fl_35"
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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird

SELECT 
	Count(*)
FROM
	"xxPerson_fl_35" "t1"

BeforeExecute
-- Firebird

SELECT 
	Count(*)
FROM
	"xxPerson_fl_35" "p"
WHERE
	"p"."FirstName" = 'Steven' AND "p"."LastName" = 'King' AND
	"p"."Gender" = 'M'

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_fl_35"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_fl_35"';
	EXECUTE STATEMENT 'DROP TABLE "xxPerson_fl_35"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_xxPerson_fl_35')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_fl_35"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_xxPerson_fl_35')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_fl_35"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_fl_35')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPerson_fl_35"';
END

