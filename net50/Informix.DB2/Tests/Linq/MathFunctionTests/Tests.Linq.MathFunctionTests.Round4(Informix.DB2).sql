﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN Cast(p.MoneyValue as Float) * 2 = Round(Cast(p.MoneyValue as Float) * 2, 1) AND Cast(p.MoneyValue as Float) <> Round(Cast(p.MoneyValue as Float), 1)
			THEN Round(Cast(p.MoneyValue as Float) / 2, 1) * 2
		ELSE Round(Cast(p.MoneyValue as Float), 1)
	END
FROM
	LinqDataTypes p
WHERE
	CASE
		WHEN Cast(p.MoneyValue as Float) * 2 = Round(Cast(p.MoneyValue as Float) * 2, 1) AND Cast(p.MoneyValue as Float) <> Round(Cast(p.MoneyValue as Float), 1)
			THEN Round(Cast(p.MoneyValue as Float) / 2, 1) * 2
		ELSE Round(Cast(p.MoneyValue as Float), 1)
	END <> 0

