BeforeExecute
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 6

SELECT FIRST 1
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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
	"Person" "t1"
SET
	"Gender" = CAST(@Gender AS CHAR(1)),
	"FirstName" = CAST(@Name_FirstName AS VARCHAR(13)),
	"MiddleName" = CAST(@Name_MiddleName AS VARCHAR(1)),
	"LastName" = CAST(@Name_LastName AS VARCHAR(13))
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 6

SELECT FIRST 1
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

