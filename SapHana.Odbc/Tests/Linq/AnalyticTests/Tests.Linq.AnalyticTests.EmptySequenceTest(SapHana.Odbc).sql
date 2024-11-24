BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d_1"."ParentID",
	"d_1"."Children"
FROM
	(
		SELECT DISTINCT
			"c_1"."ParentID"
		FROM
			"Parent" "c_1"
	) "m_1"
		INNER JOIN LATERAL (
			SELECT
				"d"."ParentID",
				STRING_AGG(CAST("d"."ChildID" AS NVarChar(11)), ', ') as "Children"
			FROM
				"Child" "d"
			WHERE
				"m_1"."ParentID" = "d"."ParentID"
			GROUP BY
				"d"."ParentID"
		) "d_1" ON 1=1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."ParentID"
FROM
	"Parent" "c_1"

