BeforeExecute
-- Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'UpdateComplex'

BeforeExecute
-- Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(5) -- String
SET     @Name_LastName = 'Empty'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"PersonID",
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	GEN_ID("PersonID", 1),
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Integer -- Int32
SET     @ID = 6

UPDATE
	"Person"
SET
	"Person"."Gender" = @Gender,
	"Person"."FirstName" = @Name_FirstName,
	"Person"."MiddleName" = @Name_MiddleName,
	"Person"."LastName" = @Name_LastName
WHERE
	"Person"."PersonID" = @ID

BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'UpdateComplex'

