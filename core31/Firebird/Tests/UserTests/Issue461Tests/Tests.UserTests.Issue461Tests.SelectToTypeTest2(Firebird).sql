BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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

