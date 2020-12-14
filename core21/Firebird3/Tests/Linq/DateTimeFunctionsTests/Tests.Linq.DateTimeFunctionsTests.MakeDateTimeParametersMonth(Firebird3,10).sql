BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 VarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Cast((Cast((2010 + "t".ID) as VarChar(11)) || '-' || Cast(@p_1 as VarChar(255) CHARACTER SET UNICODE_FSS) || '-1') as Date)
FROM
	"LinqDataTypes" "t"

