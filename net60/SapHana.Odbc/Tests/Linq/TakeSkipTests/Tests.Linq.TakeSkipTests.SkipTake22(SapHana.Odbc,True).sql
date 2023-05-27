BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip_2  -- Int32
SET     @skip_2 = 5
DECLARE @skip_3  -- Int32
SET     @skip_3 = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
LIMIT ? OFFSET ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip_3  -- Int32
SET     @skip_3 = 5
DECLARE @skip_4  -- Int32
SET     @skip_4 = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
LIMIT ? OFFSET ?

