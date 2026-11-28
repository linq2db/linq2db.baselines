-- SapHana.Odbc SapHanaOdbc
DECLARE @parentId Int -- Int32
SET     @parentId = 1

SELECT
	"親"."ParentID",
	"親"."Value1"
FROM
	"Parent" "親"
		INNER JOIN "Child" "子" ON "子"."ParentID" = "親"."ParentID"
WHERE
	"親"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

