BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @year  -- Int32
SET     @year = 2010

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			To_Timestamp(LPad(?, 4, '0') || '-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000') as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	Year("t_1"."c1") = 2010

