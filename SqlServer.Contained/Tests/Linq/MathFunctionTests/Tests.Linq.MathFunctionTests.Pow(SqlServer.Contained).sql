﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Power(Convert(Float, [t].[MoneyValue]), 3)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

