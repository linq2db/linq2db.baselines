BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

SELECT
	Date(RTrim(Char(2010 + "t".ID)) || '-' || @p1 || '-1')
FROM
	"LinqDataTypes" "t"

