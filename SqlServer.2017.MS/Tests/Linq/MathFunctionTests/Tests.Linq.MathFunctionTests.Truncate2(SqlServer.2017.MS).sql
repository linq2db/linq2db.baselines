﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Round(Convert(Float, -[p].[MoneyValue]), 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round(Convert(Float, -[p].[MoneyValue]), 0, 1) <> 0.10000000000000001

