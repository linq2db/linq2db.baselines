BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Extract(year from CAST('2010-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS Date)) as "Year_1",
			CAST('2010-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Year_1" = 2010 AND "t"."Year_1" IS NOT NULL

