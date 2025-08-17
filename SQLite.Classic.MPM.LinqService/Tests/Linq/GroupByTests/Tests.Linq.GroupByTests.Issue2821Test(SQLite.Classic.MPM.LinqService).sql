BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @currentDate VarChar(23) -- AnsiString
SET     @currentDate = '2020-02-29 17:54:55.123'
DECLARE @currentDate_1 VarChar(23) -- AnsiString
SET     @currentDate_1 = '2020-02-29 17:54:55.123'

SELECT
	[o].[ID],
	[o].[MoneyValue],
	[o].[DateTimeValue],
	[o].[DateTimeValue2],
	[o].[BoolValue],
	[o].[GuidValue],
	[o].[SmallIntValue],
	[o].[IntValue],
	[o].[BigIntValue],
	[o].[StringValue]
FROM
	[LinqDataTypes] [o]
		INNER JOIN (
			SELECT
				[t].[ID],
				MAX([t].[DateTimeValue2]) as [c1]
			FROM
				[LinqDataTypes] [t]
			WHERE
				strftime('%Y-%m-%d %H:%M:%f', Coalesce([t].[DateTimeValue], [t].[DateTimeValue2])) <= strftime('%Y-%m-%d %H:%M:%f', @currentDate) AND
				([t].[DateTimeValue2] IS NULL OR strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue2]) >= strftime('%Y-%m-%d %H:%M:%f', @currentDate_1))
			GROUP BY
				[t].[ID]
		) [t1] ON [o].[ID] = [t1].[ID] AND (strftime('%Y-%m-%d %H:%M:%f', [o].[DateTimeValue2]) = strftime('%Y-%m-%d %H:%M:%f', [t1].[c1]) OR [o].[DateTimeValue2] IS NULL AND [t1].[c1] IS NULL)
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([o].[DateTimeValue], [o].[DateTimeValue2])) <= strftime('%Y-%m-%d %H:%M:%f', @currentDate) AND
	([o].[DateTimeValue2] IS NULL OR strftime('%Y-%m-%d %H:%M:%f', [o].[DateTimeValue2]) >= strftime('%Y-%m-%d %H:%M:%f', @currentDate_1))
ORDER BY
	[o].[DateTimeValue2]

