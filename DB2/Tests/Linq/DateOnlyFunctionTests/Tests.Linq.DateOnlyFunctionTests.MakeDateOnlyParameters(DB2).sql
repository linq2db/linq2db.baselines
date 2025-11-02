-- DB2 DB2.LUW DB2LUW
DECLARE @year Integer(4) -- Int32
SET     @year = 2010

SELECT
	CAST(LPad(CAST(@year AS Int), 4, '0') || '-' || LPad("t".ID, 2, '0') || '-01' AS Date)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(year from CAST(LPad(CAST(@year AS Int), 4, '0') || '-' || LPad("t".ID, 2, '0') || '-01' AS Date)) = 2010

