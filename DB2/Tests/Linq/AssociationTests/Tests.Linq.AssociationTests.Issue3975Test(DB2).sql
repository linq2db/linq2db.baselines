BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID"
FROM
	"Parent" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
