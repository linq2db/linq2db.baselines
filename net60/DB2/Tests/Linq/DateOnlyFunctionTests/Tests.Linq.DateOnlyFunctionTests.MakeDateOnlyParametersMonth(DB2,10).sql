BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 VarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Date(RTrim(Char(2010 + "t".ID)) || '-' || @p_1 || '-1')
FROM
	"LinqDataTypes" "t"

