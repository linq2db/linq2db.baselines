﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Floor(Exp(Convert(Float, [p].[MoneyValue])))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Exp(Convert(Float, [p].[MoneyValue]))) <> 0.10000000000000001 OR Floor(Exp(Convert(Float, [p].[MoneyValue]))) IS NULL)

