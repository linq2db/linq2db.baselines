BeforeExecute
-- Firebird

SELECT
	Cast("selectParam"."DateTimeValue" as Date),
	Count(*)
FROM
	"LinqDataTypes" "selectParam"
		INNER JOIN "Parent" "p" ON "selectParam".ID = "p"."ParentID"
GROUP BY
	Cast("selectParam"."DateTimeValue" as Date)

