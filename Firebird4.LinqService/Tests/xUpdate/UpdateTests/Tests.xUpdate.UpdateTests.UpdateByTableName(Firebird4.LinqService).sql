﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_xxPerson_f4l_32')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_f4l_32"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_xxPerson_f4l_32')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_f4l_32"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPerson_f4l_32')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPerson_f4l_32"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "xxPerson_f4l_32"
		(
			"FirstName"  VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
			"PersonID"   Int                                     NOT NULL,
			"LastName"   VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
			"MiddleName" VarChar(255) CHARACTER SET UNICODE_FSS,
			"Gender"     Char(1)                                 NOT NULL,

			CONSTRAINT "PK_xxPerson_f4l_32" PRIMARY KEY ("PersonID")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_xxPerson_f4l_32"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_xxPerson_f4l_32" FOR "xxPerson_f4l_32"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."PersonID" = GEN_ID("GIDENTITY_xxPerson_f4l_32", 1);
		END
	';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson_f4l_32"
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
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"xxPerson_f4l_32" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"xxPerson_f4l_32" "t1"

BeforeExecute
-- Firebird4 Firebird
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
	"xxPerson_f4l_32"
SET
	"xxPerson_f4l_32"."FirstName" = @FirstName,
	"xxPerson_f4l_32"."LastName" = @LastName,
	"xxPerson_f4l_32"."MiddleName" = @MiddleName,
	"xxPerson_f4l_32"."Gender" = @Gender
WHERE
	"xxPerson_f4l_32"."PersonID" = @ID

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"xxPerson_f4l_32" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_xxPerson_f4l_32"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_xxPerson_f4l_32"';
	EXECUTE STATEMENT 'DROP TABLE "xxPerson_f4l_32"';
END

