BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Gen_Uuid()
FROM
	"LinqDataTypes" "p"
FETCH NEXT @take ROWS ONLY

