﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Convert(Bit, [p].[MoneyValue] - 4.5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = 0

