BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast((Year("p"."DateTimeValue") + 1) as VarChar(11)) || '-10-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Month("t"."c1") = 10

