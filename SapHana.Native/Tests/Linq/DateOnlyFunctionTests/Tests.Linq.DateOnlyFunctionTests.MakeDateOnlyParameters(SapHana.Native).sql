-- SapHana.Native SapHana
DECLARE @year Integer -- Int32
SET     @year = 2010
DECLARE @year_1 Integer -- Int32
SET     @year_1 = 2010

SELECT
	To_Timestamp(LPad(:"year", 4, '0') || '-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000')
FROM
	"LinqDataTypes" "t"
WHERE
	Year(To_Timestamp(LPad(:"year_1", 4, '0') || '-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000')) = 2010

