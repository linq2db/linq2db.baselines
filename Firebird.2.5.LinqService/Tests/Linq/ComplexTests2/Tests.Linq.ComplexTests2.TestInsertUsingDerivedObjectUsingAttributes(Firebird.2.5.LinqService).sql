BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
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
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" = 'test_inherited_insert'

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = CAST(@FirstName AS VARCHAR(21)),
	"LastName" = CAST(@LastName AS VARCHAR(4)),
	"MiddleName" = CAST(@MiddleName AS VARCHAR(4)),
	"Gender" = CAST(@Gender AS Char(1))
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" = 'test_inherited_insert'

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @ID

