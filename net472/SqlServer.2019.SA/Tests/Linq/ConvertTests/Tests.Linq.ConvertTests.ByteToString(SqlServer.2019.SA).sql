﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))) > 0

