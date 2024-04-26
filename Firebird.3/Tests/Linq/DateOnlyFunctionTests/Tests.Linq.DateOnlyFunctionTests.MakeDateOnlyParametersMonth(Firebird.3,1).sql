BeforeExecute
-- Firebird.3 Firebird3
DECLARE @month Integer -- Int32
SET     @month = 1

SELECT
	CAST(LPad(CAST(2010 + "t".ID AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST(@month AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS Date)
FROM
	"LinqDataTypes" "t"

