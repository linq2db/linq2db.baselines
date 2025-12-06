-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	"p_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		LIMIT ?
	) "p_1"
		LEFT JOIN "Child" "c_1" ON "p_1"."ParentID" = "c_1"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

