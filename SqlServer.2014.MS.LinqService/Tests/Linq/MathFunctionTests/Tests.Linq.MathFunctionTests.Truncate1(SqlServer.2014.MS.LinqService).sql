﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Round([p].[MoneyValue], 0, 1) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.1

