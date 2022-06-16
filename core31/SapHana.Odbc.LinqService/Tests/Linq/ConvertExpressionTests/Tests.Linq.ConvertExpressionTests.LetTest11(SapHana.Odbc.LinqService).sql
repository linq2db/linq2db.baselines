BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" > 0
ORDER BY
	"c_1"."ParentID"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > -100
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	1
FROM
	"Parent" "p"

