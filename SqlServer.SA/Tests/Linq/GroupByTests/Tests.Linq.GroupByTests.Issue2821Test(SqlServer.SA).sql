-- SqlServer.SA SqlServer.2019
DECLARE @currentDate DateTime
SET     @currentDate = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @currentDate_1 DateTime2
SET     @currentDate_1 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

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
				Coalesce([t].[DateTimeValue], [t].[DateTimeValue2]) <= @currentDate AND
				([t].[DateTimeValue2] IS NULL OR [t].[DateTimeValue2] >= @currentDate_1)
			GROUP BY
				[t].[ID]
		) [t1] ON [o].[ID] = [t1].[ID] AND ([o].[DateTimeValue2] = [t1].[c1] OR [o].[DateTimeValue2] IS NULL AND [t1].[c1] IS NULL)
WHERE
	Coalesce([o].[DateTimeValue], [o].[DateTimeValue2]) <= @currentDate AND
	([o].[DateTimeValue2] IS NULL OR [o].[DateTimeValue2] >= @currentDate_1)
ORDER BY
	[o].[DateTimeValue2]

