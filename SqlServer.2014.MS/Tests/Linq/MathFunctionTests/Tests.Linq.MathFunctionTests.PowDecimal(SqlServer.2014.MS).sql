﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Power([t].[MoneyValue], 3)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

