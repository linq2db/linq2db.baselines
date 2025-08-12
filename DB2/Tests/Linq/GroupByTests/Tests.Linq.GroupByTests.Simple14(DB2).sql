BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."ParentID",
	"d_1"."Key_1"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "m_1"
		INNER JOIN (
			SELECT
				"d"."ParentID" as "Key_1"
			FROM
				"Child" "d"
			GROUP BY
				"d"."ParentID"
		) "d_1" ON "m_1"."ParentID" = "d_1"."Key_1"

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

