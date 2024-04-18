BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "s"
		LEFT JOIN "Child" "c_1" ON "c_1"."ChildID" = "s"."ChildID"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
WHERE
	(
		SELECT
			1
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ChildID" = "s"."ChildID"
	) IS NOT NULL

