﻿BeforeExecute
-- SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Degrees(Convert(Int, [p].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	(Convert(Float, [t].[c1]) <> 0.10000000000000001 OR Convert(Float, [t].[c1]) IS NULL)

