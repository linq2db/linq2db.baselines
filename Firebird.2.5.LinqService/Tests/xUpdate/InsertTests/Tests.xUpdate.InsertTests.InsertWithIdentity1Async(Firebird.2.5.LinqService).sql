BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
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
-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

