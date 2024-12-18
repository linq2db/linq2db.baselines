BeforeExecute
-- Firebird.4 Firebird4
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Extract(year from CAST(LPad(CAST(@year AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp)) as "Year_1",
			CAST(LPad(CAST(@year AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Year_1" = 2010 AND "t"."Year_1" IS NOT NULL

