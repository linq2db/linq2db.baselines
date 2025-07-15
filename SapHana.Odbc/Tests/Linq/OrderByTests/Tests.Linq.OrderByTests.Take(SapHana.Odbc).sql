BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."Value1"
		FROM
			"Parent" "p"
				INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
				INNER JOIN "GrandChild" "g_1" ON "c_1"."ChildID" = "g_1"."ChildID"
		LIMIT ?
	) "t1"
ORDER BY
	"t1"."ParentID"

