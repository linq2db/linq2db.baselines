﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Floor(("p"."MoneyValue" * 180) / PI()) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.1

