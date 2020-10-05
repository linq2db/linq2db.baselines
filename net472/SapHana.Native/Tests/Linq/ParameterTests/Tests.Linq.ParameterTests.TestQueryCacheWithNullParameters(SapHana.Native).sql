BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."PersonID" IS NULL

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = :"id"

