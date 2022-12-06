BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"l"."ParentID"
FROM
	"Child" "l"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	1
FROM
	"Parent" "sep"

