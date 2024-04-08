BeforeExecute
-- Firebird4 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird4 Firebird
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
	CAST(@FirstName AS VARCHAR(3)),
	CAST(@LastName AS VARCHAR(3)),
	CAST(@MiddleName AS VARCHAR(3)),
	CAST(@Gender AS VARCHAR(1))
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird4 Firebird
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

