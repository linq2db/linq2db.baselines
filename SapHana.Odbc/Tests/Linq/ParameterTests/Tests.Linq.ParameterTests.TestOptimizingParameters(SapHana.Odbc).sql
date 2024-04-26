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
	"Person" "t1"
WHERE
	("t1"."PersonID" = ? OR "t1"."PersonID" <= ? OR "t1"."PersonID" = ?)

