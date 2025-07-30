BeforeExecute
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT FIRST 1
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."PersonID" = @id

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT FIRST 1
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."PersonID" = @id

