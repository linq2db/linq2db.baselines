﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Round(Convert(Float, [p].[MoneyValue]), 0)
FROM
	[LinqDataTypes] [p]
WHERE
	(Round(Convert(Float, [p].[MoneyValue]), 0) <> 0 OR Round(Convert(Float, [p].[MoneyValue]), 0) IS NULL)

