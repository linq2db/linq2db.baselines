BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date(RTrim(Char(2010 + "t".ID)) || '-01-01')
FROM
	"LinqDataTypes" "t"

