BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date(Lpad((2010 + "t".ID),4,'0') || '-10-01')
FROM
	"LinqDataTypes" "t"

