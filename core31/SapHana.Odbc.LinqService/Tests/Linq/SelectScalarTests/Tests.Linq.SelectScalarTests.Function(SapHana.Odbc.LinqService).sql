BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."ChildID"
FROM
	"Child" "c_1"
LIMIT ?

