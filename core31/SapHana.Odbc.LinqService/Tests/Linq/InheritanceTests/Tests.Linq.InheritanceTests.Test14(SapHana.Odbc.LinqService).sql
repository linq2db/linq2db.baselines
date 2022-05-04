BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 10

SELECT
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	"x"."ChildID" = ?
LIMIT 1

