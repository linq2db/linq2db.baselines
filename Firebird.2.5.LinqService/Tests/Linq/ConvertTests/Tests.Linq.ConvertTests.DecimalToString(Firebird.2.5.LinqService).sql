﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM REPLACE("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length("p"."MoneyValue") > 0

