BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(2) -- String
SET     @p = '01'

SELECT
	Date(Lpad((2010 + "t".ID),4,'0') || '-' || @p || '-01')
FROM
	"LinqDataTypes" "t"

