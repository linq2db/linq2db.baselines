BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	Cast(@FirstName as VarChar(255) CHARACTER SET UNICODE_FSS),
	Cast(@LastName as VarChar(255) CHARACTER SET UNICODE_FSS),
	Cast(@Gender as Char(1))
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

