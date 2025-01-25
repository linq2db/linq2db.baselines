BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	TRUE
FROM
	"SelectExpressionTable" "t1"
FETCH NEXT @take ROWS ONLY

