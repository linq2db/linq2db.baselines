﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM REPLACE("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

