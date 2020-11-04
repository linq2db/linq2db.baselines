BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
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
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_xxPerson_f_1a"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_xxPerson_f_1a" FOR "xxPerson_f_1a"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."PersonID" = GEN_ID("GIDENTITY_xxPerson_f_1a", 1);
		END
	';
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
-- Firebird

SELECT
	Count(*)
FROM
	"xxPerson_f_1a" "t1"

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
	"xxPerson_f_1a" "t1"

BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM
	"xxPerson_f_1a" "t1"
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"xxPerson_f_1a" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_f_1a"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_f_1a"';
	EXECUTE STATEMENT 'DROP TABLE "xxPerson_f_1a"';
END

