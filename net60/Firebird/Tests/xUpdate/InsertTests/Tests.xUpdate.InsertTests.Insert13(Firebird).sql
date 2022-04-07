BeforeExecute
-- Firebird

SELECT
	Max("t"."PersonID")
FROM
	"Person" "t"

BeforeExecute
-- Firebird

INSERT INTO "Person"
(
	"PersonID",
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	GEN_ID("PersonID", 1),
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > @id

