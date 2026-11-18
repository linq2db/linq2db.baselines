-- Firebird.5 Firebird4
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	CAST(LPad(CAST(@year AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("t".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(year from CAST(LPad(CAST(@year AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("t".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp)) = 2010

