﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue - FLOOR(t.MoneyValue) = 0.5 AND Mod(FLOOR(t.MoneyValue), 2) = 0
					THEN FLOOR(t.MoneyValue)
				ELSE ROUND(t.MoneyValue, 0)
			END::SmallInt as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0

