BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 5
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
LIMIT ? OFFSET ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 5
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
LIMIT ? OFFSET ?

