BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
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
-- Firebird.4 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

