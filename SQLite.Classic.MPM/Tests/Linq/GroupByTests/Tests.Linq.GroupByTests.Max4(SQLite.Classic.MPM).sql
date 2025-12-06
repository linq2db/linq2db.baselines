-- SQLite.Classic.MPM SQLite.Classic SQLite

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
				[t2].[ID] = 1 AND strftime('%Y-%m-%d %H:%M:%f', [t2].[DateTimeValue]) <= strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 00:00:00.000')
			GROUP BY
				[t2].[ID]
		) [t2_1] ON [t1].[ID] = [t2_1].[ID] AND strftime('%Y-%m-%d %H:%M:%f', [t1].[DateTimeValue]) = strftime('%Y-%m-%d %H:%M:%f', [t2_1].[c1])

