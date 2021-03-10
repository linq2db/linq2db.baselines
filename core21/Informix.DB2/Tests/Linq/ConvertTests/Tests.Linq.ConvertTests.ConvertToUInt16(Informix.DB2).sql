﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN t.MoneyValue - Floor(t.MoneyValue) = 0.5 AND Mod(Floor(t.MoneyValue), 2) = 0
			THEN Floor(t.MoneyValue)
		ELSE Round(t.MoneyValue, 0)
	END as Int)
FROM
	LinqDataTypes t
WHERE
	Cast(CASE
		WHEN t.MoneyValue - Floor(t.MoneyValue) = 0.5 AND Mod(Floor(t.MoneyValue), 2) = 0
			THEN Floor(t.MoneyValue)
		ELSE Round(t.MoneyValue, 0)
	END as Int) > 0

