BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST('2010-' || LPad(CAST("t".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS Date)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(year from CAST('2010-' || LPad(CAST("t".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS Date)) = 2010

