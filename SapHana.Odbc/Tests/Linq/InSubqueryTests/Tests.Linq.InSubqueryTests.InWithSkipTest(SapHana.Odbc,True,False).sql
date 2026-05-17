-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"v"."ParentID"
				FROM
					"Parent" "v"
				LIMIT 4200000000 OFFSET 100
			) "t1"
		WHERE
			"c_1"."ParentID" = "t1"."ParentID"
	)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

