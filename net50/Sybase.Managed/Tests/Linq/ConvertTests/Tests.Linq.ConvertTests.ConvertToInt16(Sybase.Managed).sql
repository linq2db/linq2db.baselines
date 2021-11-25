﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(SmallInt, CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END)
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(SmallInt, CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END) > 0

