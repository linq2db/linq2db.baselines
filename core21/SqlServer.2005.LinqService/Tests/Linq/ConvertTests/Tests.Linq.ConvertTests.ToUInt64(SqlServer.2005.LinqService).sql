﻿BeforeExecute
-- SqlServer.2005

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Decimal, Floor([t].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

