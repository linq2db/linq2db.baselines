BeforeExecute
-- Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'
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
-- Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @FirstName VarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @PersonID AND
	"t1"."FirstName" = @FirstName AND
	"t1"."LastName" = @LastName AND
	"t1"."MiddleName" = @MiddleName AND
	"t1"."Gender" = @Gender

