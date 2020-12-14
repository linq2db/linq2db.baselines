BeforeExecute
-- Firebird
DECLARE @p_1 VarChar(1) -- String
SET     @p_1 = '1'

SELECT
	Cast((Cast((2010 + "t".ID) as VarChar(11)) || '-' || Cast(@p_1 as VarChar(255) CHARACTER SET UNICODE_FSS) || '-1') as Date)
FROM
	"LinqDataTypes" "t"

