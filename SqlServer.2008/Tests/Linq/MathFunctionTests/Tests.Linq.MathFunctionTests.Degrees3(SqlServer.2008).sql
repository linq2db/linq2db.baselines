﻿BeforeExecute
--  SqlServer.2008

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Degrees(CAST(Floor([p].[MoneyValue]) AS Int)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	CAST([t].[Value_1] AS Float) <> 0.10000000000000001

