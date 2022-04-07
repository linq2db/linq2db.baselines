BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	1
FROM
	"Parent" "p"

