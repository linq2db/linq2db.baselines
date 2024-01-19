BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	1
FROM
	"Parent" "p"

