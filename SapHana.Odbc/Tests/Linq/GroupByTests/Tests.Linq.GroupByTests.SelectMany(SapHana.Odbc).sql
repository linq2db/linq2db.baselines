-- SapHana.Odbc SapHanaOdbc
SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID" as "Key_1"
		FROM
			"Child" "t1"
	) "g_1"
		INNER JOIN "Child" "ch" ON "g_1"."Key_1" = "ch"."ParentID"

