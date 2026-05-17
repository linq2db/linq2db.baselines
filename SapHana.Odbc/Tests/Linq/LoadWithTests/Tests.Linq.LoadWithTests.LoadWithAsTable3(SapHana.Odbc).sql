-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			"p"."ParentID" = "a_GrandChildren"."ParentID"
	),
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"

