BeforeExecute
-- SapHana.Native SapHana

SELECT
	Max("t"."PersonID")
FROM
	"Person" "t"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(9) -- String
SET     @FirstName_1 = 'FirstName'
DECLARE @Gender_1 NChar(1) -- StringFixedLength
SET     @Gender_1 = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:"FirstName_1",
	'LastName',
	:"Gender_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > :"id"

