﻿BeforeExecute
-- SqlServer.2016

SELECT
	Floor(Atan(Convert(Float, [p].[MoneyValue]) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Atan(Convert(Float, [p].[MoneyValue]) / 15) * 15) <> 0.10000000000000001 OR Floor(Atan(Convert(Float, [p].[MoneyValue]) / 15) * 15) IS NULL)

