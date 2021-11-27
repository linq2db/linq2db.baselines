BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(('2010-' || Cast("p".ID as VarChar(11) CHARACTER SET UNICODE_FSS) || '-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(year from "t"."c1")) as int) = 2010

