﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Convert(NVarChar(31), [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(31), [t].[MoneyValue])) > 0

