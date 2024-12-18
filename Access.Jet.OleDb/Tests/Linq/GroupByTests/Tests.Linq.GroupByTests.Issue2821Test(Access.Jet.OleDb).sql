BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @currentDate Date -- DateTime
SET     @currentDate = #2020-02-29 17:54:55#
DECLARE @currentDate_1 Date -- DateTime
SET     @currentDate_1 = #2020-02-29 17:54:55#
DECLARE @currentDate_2 Date -- DateTime
SET     @currentDate_2 = #2020-02-29 17:54:55#
DECLARE @currentDate_3 Date -- DateTime
SET     @currentDate_3 = #2020-02-29 17:54:55#

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
				IIF([t].[DateTimeValue] IS NULL, [t].[DateTimeValue2], [t].[DateTimeValue]) <= @currentDate AND
				IIF([t].[DateTimeValue] IS NULL, [t].[DateTimeValue2], [t].[DateTimeValue]) IS NOT NULL AND
				([t].[DateTimeValue2] IS NULL OR [t].[DateTimeValue2] >= @currentDate_1 AND [t].[DateTimeValue2] IS NOT NULL)
			GROUP BY
				[t].[ID]
		) [t1] ON ([o].[ID] = [t1].[ID] AND ([o].[DateTimeValue2] = [t1].[c1] AND [o].[DateTimeValue2] IS NOT NULL AND [t1].[c1] IS NOT NULL OR [o].[DateTimeValue2] IS NULL AND [t1].[c1] IS NULL))
WHERE
	IIF([o].[DateTimeValue] IS NULL, [o].[DateTimeValue2], [o].[DateTimeValue]) <= @currentDate_2 AND
	IIF([o].[DateTimeValue] IS NULL, [o].[DateTimeValue2], [o].[DateTimeValue]) IS NOT NULL AND
	([o].[DateTimeValue2] IS NULL OR [o].[DateTimeValue2] >= @currentDate_3 AND [o].[DateTimeValue2] IS NOT NULL)
ORDER BY
	[o].[DateTimeValue2]

