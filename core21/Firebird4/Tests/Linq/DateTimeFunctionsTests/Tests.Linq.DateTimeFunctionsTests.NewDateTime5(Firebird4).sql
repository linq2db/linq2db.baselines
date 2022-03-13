BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast((Cast(Floor(Extract(year from "p"."DateTimeValue")) as int) + 1) as VarChar(100) CHARACTER SET UNICODE_FSS) || '-10-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(month from "t"."c1")) as int) = 10

