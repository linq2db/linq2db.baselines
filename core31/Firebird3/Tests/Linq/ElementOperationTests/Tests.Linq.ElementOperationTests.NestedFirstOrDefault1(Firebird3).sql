BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird3 Firebird

SELECT
	1
FROM
	"Parent" "p"

