﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Floor(Atn2(Convert(Float, [p].[MoneyValue]) / 15, 0) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Atn2(Convert(Float, [p].[MoneyValue]) / 15, 0) * 15) <> 0.10000000000000001 OR Floor(Atn2(Convert(Float, [p].[MoneyValue]) / 15, 0) * 15) IS NULL)

