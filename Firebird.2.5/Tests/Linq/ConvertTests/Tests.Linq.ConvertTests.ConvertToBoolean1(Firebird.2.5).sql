﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "t"."MoneyValue" <> 0
			THEN '1'
		ELSE '0'
	END
FROM
	"LinqDataTypes" "t"
WHERE
	("t"."MoneyValue" <> 0)

