﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Sign("p"."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

