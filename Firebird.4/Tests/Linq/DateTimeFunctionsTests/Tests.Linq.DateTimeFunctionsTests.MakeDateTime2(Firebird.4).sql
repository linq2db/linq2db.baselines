-- Firebird.4 Firebird4

SELECT
	CAST('2010-' || LPad(CAST("t".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01 20:35:44.000' AS TimeStamp)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(year from CAST('2010-' || LPad(CAST("t".ID AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01 20:35:44.000' AS TimeStamp)) = 2010

