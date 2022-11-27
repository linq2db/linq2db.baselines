﻿BeforeExecute
-- SqlServer.2008
DECLARE @Date_1 DateTime2
SET     @Date_1 = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[MoneyValue]
FROM
	[LinqDataTypes] [t1]
		INNER JOIN (
			SELECT
				[sub].[ID],
				Max([sub].[DateTimeValue]) as [DateTimeValue]
			FROM
				[LinqDataTypes] [sub]
			WHERE
				[sub].[ID] = 1 AND [sub].[DateTimeValue] <= @Date_1
			GROUP BY
				[sub].[ID]
		) [t2] ON [t1].[ID] = [t2].[ID] AND [t1].[DateTimeValue] = [t2].[DateTimeValue]

