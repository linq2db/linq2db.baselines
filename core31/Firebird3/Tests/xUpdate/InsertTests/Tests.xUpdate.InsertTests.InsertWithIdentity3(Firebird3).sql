BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'John' AND "p"."LastName" = 'Shepard'

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

