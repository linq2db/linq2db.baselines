BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

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
				[t2].[ID] = 1 AND strftime('%Y-%m-%d %H:%M:%f', [t2].[DateTimeValue]) <= strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 00:00:00.000')
			GROUP BY
				[t2].[ID]
		) [t1] ON [t1_1].[ID] = [t1].[ID] AND strftime('%Y-%m-%d %H:%M:%f', [t1_1].[DateTimeValue]) = strftime('%Y-%m-%d %H:%M:%f', [t1].[c1])

