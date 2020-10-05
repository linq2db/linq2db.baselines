BeforeExecute
-- SapHana.Native SapHana

SELECT
	Max("t"."PersonID")
FROM
	"Person" "t"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:"FirstName",
	'LastName',
	:"Gender"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > :"id"

