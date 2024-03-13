﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

SELECT
	[t1_1].[MoneyValue]
FROM
	[LinqDataTypes] [t1_1]
		INNER JOIN (
			SELECT
				[t2].[ID],
				Max([t2].[DateTimeValue]) as [DateTimeValue]
			FROM
				[LinqDataTypes] [t2]
			WHERE
				[t2].[ID] = 1 AND [t2].[DateTimeValue] <= @Date
			GROUP BY
				[t2].[ID]
		) [t1] ON [t1_1].[ID] = [t1].[ID] AND [t1_1].[DateTimeValue] = [t1].[DateTimeValue]

