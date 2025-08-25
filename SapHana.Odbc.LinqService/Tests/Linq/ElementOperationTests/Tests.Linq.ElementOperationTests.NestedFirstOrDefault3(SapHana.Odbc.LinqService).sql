BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				"a_Children"."ParentID"
			FROM
				"Child" "a_Children"
			WHERE
				"p"."ParentID" = "a_Children"."ParentID"
			LIMIT 1
		) "t1" ON 1=1

