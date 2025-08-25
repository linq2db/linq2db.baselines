BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Coalesce("t1"."Value1", "c_1"."ChildID")
FROM
	"Child" "c_1"
		LEFT JOIN LATERAL (
			SELECT
				"a_Parent"."Value1"
			FROM
				"Child" "ch"
					LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"
			WHERE
				"ch"."ChildID" = "c_1"."ChildID"
			LIMIT 1
		) "t1" ON 1=1

