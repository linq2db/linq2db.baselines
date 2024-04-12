BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	(
		SELECT
			SUM("a_Children"."ParentID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 0
	) / 2
FROM
	"Parent" "p"
WHERE
	(
		SELECT
			SUM("a_Children"."ParentID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 0
	) / 2 > 1

