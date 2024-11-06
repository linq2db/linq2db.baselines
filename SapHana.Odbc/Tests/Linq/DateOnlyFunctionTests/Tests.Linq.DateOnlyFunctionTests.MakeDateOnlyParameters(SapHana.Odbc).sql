BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @year  -- Int32
SET     @year = 2010

SELECT
	"t"."c1"
FROM
	(
		SELECT
			To_Timestamp(LPad(?, 4, '0') || '-' || LPad("p"."ID", 2, '0') || '-01 00:00:00.000') as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

