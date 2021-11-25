﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	CASE
		WHEN "p"."MoneyValue" - Floor("p"."MoneyValue") = 0.5 AND Mod(Floor("p"."MoneyValue"), 2) = 0
			THEN Floor("p"."MoneyValue")
		ELSE Round("p"."MoneyValue", 0)
	END
FROM
	"LinqDataTypes" "p"
WHERE
	CASE
		WHEN "p"."MoneyValue" - Floor("p"."MoneyValue") = 0.5 AND Mod(Floor("p"."MoneyValue"), 2) = 0
			THEN Floor("p"."MoneyValue")
		ELSE Round("p"."MoneyValue", 0)
	END <> 0

