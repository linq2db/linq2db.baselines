BeforeExecute
-- Firebird.3 Firebird3
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CAST(LPad(CAST(@year AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("p".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Extract(year from "t"."c1") = 2010

