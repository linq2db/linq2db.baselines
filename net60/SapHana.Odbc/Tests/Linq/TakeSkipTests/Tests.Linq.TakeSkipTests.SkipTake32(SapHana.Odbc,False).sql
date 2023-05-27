BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip_4  -- Int32
SET     @skip_4 = 5
DECLARE @skip_5  -- Int32
SET     @skip_5 = 2

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
DECLARE @skip_5  -- Int32
SET     @skip_5 = 5
DECLARE @skip_6  -- Int32
SET     @skip_6 = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
LIMIT ? OFFSET ?

