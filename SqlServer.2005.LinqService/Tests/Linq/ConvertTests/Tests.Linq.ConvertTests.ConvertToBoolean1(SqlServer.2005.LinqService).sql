﻿BeforeExecute
-- SqlServer.2005

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Convert(Bit, [p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = 1

