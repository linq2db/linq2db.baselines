﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(("p"."MoneyValue" * 180) / PI()) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.1

