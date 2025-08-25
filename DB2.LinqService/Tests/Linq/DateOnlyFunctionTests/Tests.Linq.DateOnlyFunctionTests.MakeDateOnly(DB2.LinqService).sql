BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST('2010-' || LPad("t".ID, 2, '0') || '-01' AS Date)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(year from CAST('2010-' || LPad("t".ID, 2, '0') || '-01' AS Date)) = 2010

