﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Exp(Convert(Float, [p].[MoneyValue]))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

