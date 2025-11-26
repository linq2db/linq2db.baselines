-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."c1"
FROM
	"Parent" "p1"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID" + 1 as "c1"
			FROM
				"Child" "a_Children"
			WHERE
				"p1"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" + 1 < "p1"."ParentID" + 2
			LIMIT 1
		) "t1" ON 1=1
WHERE
	"p1"."ParentID" > -1 AND "p1"."ParentID" > -2

