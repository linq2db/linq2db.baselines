BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	(
		SELECT
			"t"."ParentID"
		FROM
			"Parent" "t"
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "d"."ParentID" = "a_Parent"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
