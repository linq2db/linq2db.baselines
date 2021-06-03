﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Round(Convert(Float, [p].[MoneyValue]), 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0 OR [t].[c1] IS NULL)

