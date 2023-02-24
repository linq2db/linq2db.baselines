BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird4 Firebird (asynchronously)
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
-- Firebird4 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

