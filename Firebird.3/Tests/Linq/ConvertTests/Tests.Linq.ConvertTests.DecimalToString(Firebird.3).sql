﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Cast("t"."MoneyValue" as VarChar(31) CHARACTER SET UNICODE_FSS)
FROM
	"LinqDataTypes" "t"
WHERE
	Char_Length(Cast("t"."MoneyValue" as VarChar(31) CHARACTER SET UNICODE_FSS)) > 0

