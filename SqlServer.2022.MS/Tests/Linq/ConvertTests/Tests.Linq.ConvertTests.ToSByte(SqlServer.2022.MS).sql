﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS TinyInt) > 0

