-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird

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

-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

