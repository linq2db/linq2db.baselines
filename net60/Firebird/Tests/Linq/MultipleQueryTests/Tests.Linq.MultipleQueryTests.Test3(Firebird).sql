BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird

SELECT
	1
FROM
	"Parent" "p"

