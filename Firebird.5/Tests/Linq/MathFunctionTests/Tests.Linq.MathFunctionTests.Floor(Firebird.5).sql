﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Floor(-("p"."MoneyValue" + 1)) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0

