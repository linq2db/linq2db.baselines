-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		LIMIT 3
	) "p_1"
WHERE
	"t1"."ParentID" = "p_1"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		LIMIT 3 OFFSET 12
	) "p_1"
WHERE
	"t1"."ParentID" = "p_1"."ParentID"

