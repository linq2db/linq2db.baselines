BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird

SELECT FIRST 1
	"l"."ParentID"
FROM
	"Child" "l"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird

SELECT
	1
FROM
	"Parent" "sep"

