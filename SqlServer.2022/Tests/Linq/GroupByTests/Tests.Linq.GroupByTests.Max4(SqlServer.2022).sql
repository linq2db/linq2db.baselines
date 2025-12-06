-- SqlServer.2022

SELECT
	[t1].[MoneyValue]
FROM
	[LinqDataTypes] [t1]
		INNER JOIN (
			SELECT
				[t2].[ID],
				MAX([t2].[DateTimeValue]) as [c1]
			FROM
				[LinqDataTypes] [t2]
			WHERE
				[t2].[ID] = 1 AND [t2].[DateTimeValue] <= DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
			GROUP BY
				[t2].[ID]
		) [t2_1] ON [t1].[ID] = [t2_1].[ID] AND [t1].[DateTimeValue] = [t2_1].[c1]

