﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast(Floor(CASE
				WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Floor("t"."MoneyValue"), 2) = 0
					THEN Floor("t"."MoneyValue")
				ELSE Round("t"."MoneyValue", 0)
			END) as Decimal) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

