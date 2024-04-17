BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Gen_Uuid()
FROM
	"LinqDataTypes" "p"
FETCH NEXT @take ROWS ONLY

