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
RollbackTransaction
BeforeExecute
-- Firebird

SELECT
	1
FROM
	"Parent" "p"

