BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32

SELECT
	"ch"."GrandChildID"
FROM
	"GrandChild" "ch"
WHERE
	("ch"."ParentID" = ? AND "ch"."ChildID" = ?)

