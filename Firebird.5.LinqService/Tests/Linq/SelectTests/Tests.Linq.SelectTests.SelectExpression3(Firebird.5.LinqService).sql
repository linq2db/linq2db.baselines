BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	TRUE
FROM
	"SelectExpressionTable" "t1"
FETCH NEXT @take ROWS ONLY

