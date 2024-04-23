BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = ?

