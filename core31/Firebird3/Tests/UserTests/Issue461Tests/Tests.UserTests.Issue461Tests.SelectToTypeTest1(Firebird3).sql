BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"l"."ParentID"
FROM
	"Child" "l"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird3 Firebird

SELECT
	1
FROM
	"Parent" "sep"

