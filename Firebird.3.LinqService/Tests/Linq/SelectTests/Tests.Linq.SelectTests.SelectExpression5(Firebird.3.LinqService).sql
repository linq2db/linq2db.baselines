BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	TRUE
FROM
	"SelectExpressionTable" "t1"
FETCH NEXT @take ROWS ONLY

