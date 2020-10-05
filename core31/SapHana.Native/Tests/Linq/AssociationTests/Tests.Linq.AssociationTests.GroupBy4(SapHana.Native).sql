BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			Year("selectParam"."DateTimeValue") as "c1"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1"

