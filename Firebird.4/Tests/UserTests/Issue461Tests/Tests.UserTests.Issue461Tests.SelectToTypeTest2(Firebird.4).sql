BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"l"."ParentID"
FROM
	"Child" "l"
FETCH NEXT @take ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	1
FROM
	"Parent" "sep"

