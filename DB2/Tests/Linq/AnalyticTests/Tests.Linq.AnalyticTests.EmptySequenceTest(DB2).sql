BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
		INNER JOIN (
			SELECT
				"d"."ParentID" as "Key_1",
				LISTAGG(RTrim(Char("d"."ChildID")), ', ') as "ToValue"
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
	"c_1"."ParentID"
FROM
	"Parent" "c_1"

