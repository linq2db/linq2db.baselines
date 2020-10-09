BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_fl_32')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPerson_fl_32"';
END

BeforeExecute
-- Firebird

CREATE TABLE "xxPerson_fl_32"
(
	"FirstName"  VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
	"PersonID"   Int                                     NOT NULL,
	"LastName"   VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
	"MiddleName" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Gender"     Char(1)                                 NOT NULL,

	CONSTRAINT "PK_xxPerson_fl_32" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Firebird

CREATE GENERATOR "GIDENTITY_xxPerson_fl_32"

BeforeExecute
-- Firebird

CREATE TRIGGER "TIDENTITY_xxPerson_fl_32" FOR "xxPerson_fl_32"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."PersonID" = GEN_ID("GIDENTITY_xxPerson_fl_32", 1);
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

INSERT INTO "xxPerson_fl_32"
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

SELECT 
	Count(*)
FROM
	"xxPerson_fl_32" "t1"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t1"."FirstName", 
	"t1"."PersonID", 
	"t1"."LastName", 
	"t1"."MiddleName", 
	"t1"."Gender"
FROM
	"xxPerson_fl_32" "t1"

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'None'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"xxPerson_fl_32"
SET
	"xxPerson_fl_32"."FirstName" = @FirstName,
	"xxPerson_fl_32"."LastName" = @LastName,
	"xxPerson_fl_32"."MiddleName" = @MiddleName,
	"xxPerson_fl_32"."Gender" = @Gender
WHERE
	"xxPerson_fl_32"."PersonID" = @ID

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t1"."FirstName", 
	"t1"."PersonID", 
	"t1"."LastName", 
	"t1"."MiddleName", 
	"t1"."Gender"
FROM
	"xxPerson_fl_32" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_fl_32"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_fl_32"';
	EXECUTE STATEMENT 'DROP TABLE "xxPerson_fl_32"';
END

