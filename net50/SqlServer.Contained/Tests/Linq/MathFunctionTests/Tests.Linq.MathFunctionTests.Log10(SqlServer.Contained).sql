﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Floor(Log10(Convert(Float, [p].[MoneyValue])))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Log10(Convert(Float, [p].[MoneyValue]))) <> 0.10000000000000001 OR Floor(Log10(Convert(Float, [p].[MoneyValue]))) IS NULL)

