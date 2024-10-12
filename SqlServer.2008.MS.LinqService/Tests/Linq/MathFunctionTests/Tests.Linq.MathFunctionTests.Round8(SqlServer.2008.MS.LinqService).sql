﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST([t].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN CAST([t].[MoneyValue] AS Float) - FLOOR(CAST([t].[MoneyValue] AS Float)) = 0.5 AND (Convert(Int, FLOOR(CAST([t].[MoneyValue] AS Float))) % 2) = 0
			THEN FLOOR(CAST([t].[MoneyValue] AS Float))
		ELSE ROUND(CAST([t].[MoneyValue] AS Float), 0)
	END <> 0

