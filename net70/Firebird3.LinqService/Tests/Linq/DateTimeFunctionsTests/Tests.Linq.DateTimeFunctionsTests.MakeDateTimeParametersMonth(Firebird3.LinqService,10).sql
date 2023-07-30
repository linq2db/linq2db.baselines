BeforeExecute
-- Firebird3 Firebird
DECLARE @p VarChar(2) -- String
SET     @p = '10'

SELECT
	Cast((Lpad((2010 + "t".ID),4,'0') || '-' || Cast(@p as VarChar(255) CHARACTER SET UNICODE_FSS) || '-01') as Date)
FROM
	"LinqDataTypes" "t"

