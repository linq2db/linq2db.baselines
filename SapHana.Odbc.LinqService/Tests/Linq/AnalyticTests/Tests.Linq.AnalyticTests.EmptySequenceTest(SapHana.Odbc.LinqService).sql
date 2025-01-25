BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d_1"."Key_1",
	"d_1"."ToValue"
FROM
	(
		SELECT DISTINCT
			"c_1"."ParentID"
		FROM
			"Parent" "c_1"
	) "m_1"
		INNER JOIN LATERAL (
			SELECT
				"d"."ParentID" as "Key_1",
				STRING_AGG(CAST("d"."ChildID" AS NVarChar(11)), ', ') as "ToValue"
			FROM
				"Child" "d"
			WHERE
				"m_1"."ParentID" = "d"."ParentID"
			GROUP BY
				"d"."ParentID"
		) "d_1" ON 1=1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."ParentID"
FROM
	"Parent" "c_1"

