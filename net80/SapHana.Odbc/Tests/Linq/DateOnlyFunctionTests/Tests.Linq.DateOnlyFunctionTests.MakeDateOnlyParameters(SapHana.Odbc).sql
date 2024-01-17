BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1 NVarChar(5) -- String
SET     @Parameter1 = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((? || Lpad("p"."ID",2,'0') || '-01') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

