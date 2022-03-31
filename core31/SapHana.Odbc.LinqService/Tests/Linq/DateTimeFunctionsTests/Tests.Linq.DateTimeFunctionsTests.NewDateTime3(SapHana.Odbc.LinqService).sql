BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast(Year("p"."DateTimeValue") as VarChar(11)) || '-10-1 20:35:44') as TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Month("t"."c1") = 10

