BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast((Cast(Year("t"."DateTimeValue") as VarChar(11)) || '-01-01 00:00:00') as Timestamp) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	DayOfMonth("p"."c1") > 0

