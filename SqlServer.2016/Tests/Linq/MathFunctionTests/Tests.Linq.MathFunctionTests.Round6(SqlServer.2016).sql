﻿BeforeExecute
-- SqlServer.2016

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Round(Convert(Float, [t].[MoneyValue]), 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

