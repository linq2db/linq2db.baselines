BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	Gen_Uuid()
FROM
	"LinqDataTypes" "p"

