-- SapHana.Odbc SapHanaOdbc

SELECT
	"p2"."ParentID",
	"c_2"."ChildIDCount"
FROM
	"Parent" "t1"
		INNER JOIN LATERAL (
			SELECT
				COUNT(*) as "ChildIDCount"
			FROM
				"Child" "c_1"
			WHERE
				"t1"."ParentID" = "c_1"."ParentID"
			GROUP BY
				"c_1"."ChildID"
		) "c_2" ON 1=1
		INNER JOIN "Parent" "p2" ON "t1"."ParentID" = "p2"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

