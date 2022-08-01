BeforeExecute
-- Firebird4 Firebird
DECLARE @p_1 VarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Cast((Lpad((2010 + "t".ID),4,'0') || '-' || Cast(@p_1 as VarChar(255) CHARACTER SET UNICODE_FSS) || '-01') as Date)
FROM
	"LinqDataTypes" "t"

