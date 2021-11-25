BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date("selectParam"."DateTimeValue"),
	Count(*)
FROM
	"LinqDataTypes" "selectParam"
		INNER JOIN "Parent" "p" ON "selectParam".ID = "p"."ParentID"
GROUP BY
	Date("selectParam"."DateTimeValue")

