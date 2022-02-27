BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	(("_"."PersonID" = ? OR "_"."PersonID" <= ?) OR "_"."PersonID" = ?)

