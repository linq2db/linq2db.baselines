﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Round([p].[MoneyValue], 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 0, 1) <> 0.1

