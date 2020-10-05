BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1_1_1 NVarChar(5) -- String
SET     @p1_1_1 = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((:"p1_1_1" || Cast("p"."ID" as VarChar(11)) || '-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Year("t"."c1") = 2010

