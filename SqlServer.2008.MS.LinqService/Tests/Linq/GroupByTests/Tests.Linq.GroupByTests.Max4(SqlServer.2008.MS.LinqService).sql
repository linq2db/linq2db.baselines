﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Date DateTime2
SET     @Date = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1_1].[MoneyValue]
FROM
	[LinqDataTypes] [t1_1]
		INNER JOIN (
			SELECT
				[sub].[ID],
				Max([sub].[DateTimeValue]) as [DateTimeValue]
			FROM
				[LinqDataTypes] [sub]
			WHERE
				[sub].[ID] = 1 AND [sub].[DateTimeValue] <= @Date
			GROUP BY
				[sub].[ID]
		) [t1] ON [t1_1].[ID] = [t1].[ID] AND [t1_1].[DateTimeValue] = [t1].[DateTimeValue]

