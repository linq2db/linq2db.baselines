-- Access.Ace.Odbc AccessODBC

SELECT
	[t1_1].[MoneyValue]
FROM
	[LinqDataTypes] [t1_1]
		INNER JOIN (
			SELECT
				[t2].[ID],
				MAX([t2].[DateTimeValue]) as [c1]
			FROM
				[LinqDataTypes] [t2]
			WHERE
				[t2].[ID] = 1 AND [t2].[DateTimeValue] <= #2020-02-29#
			GROUP BY
				[t2].[ID]
		) [t1] ON ([t1_1].[ID] = [t1].[ID] AND [t1_1].[DateTimeValue] = [t1].[c1])

