BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	current schema
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	DB2INST1."Issue681Table" "t1"

