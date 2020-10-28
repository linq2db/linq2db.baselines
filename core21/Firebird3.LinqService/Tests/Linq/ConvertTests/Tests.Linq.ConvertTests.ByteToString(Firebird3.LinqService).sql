BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Cast("t".ID as SmallInt) as VarChar(3) CHARACTER SET UNICODE_FSS)
FROM
	"LinqDataTypes" "t"
WHERE
	Char_Length(Cast(Cast("t".ID as SmallInt) as VarChar(3) CHARACTER SET UNICODE_FSS)) > 0

