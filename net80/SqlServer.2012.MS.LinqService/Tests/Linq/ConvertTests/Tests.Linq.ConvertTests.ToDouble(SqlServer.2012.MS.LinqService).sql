﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Int, Convert(Float, [t].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

