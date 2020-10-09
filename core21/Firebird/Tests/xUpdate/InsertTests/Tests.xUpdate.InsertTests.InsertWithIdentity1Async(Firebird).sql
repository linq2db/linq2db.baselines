BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird (asynchronously)
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
	'John',
	'Shepard',
	'M'
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird (asynchronously)
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
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

