-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @currentDate  -- DateTime
SET     @currentDate = #2020-02-29 17:54:55#

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
				CASE
					WHEN [t].[DateTimeValue] IS NULL THEN [t].[DateTimeValue2]
					ELSE [t].[DateTimeValue]
				END <= @currentDate AND
				([t].[DateTimeValue2] IS NULL OR [t].[DateTimeValue2] >= @currentDate)
			GROUP BY
				[t].[ID]
		) [t1] ON ([o].[ID] = [t1].[ID] AND ([o].[DateTimeValue2] = [t1].[c1] OR [o].[DateTimeValue2] IS NULL AND [t1].[c1] IS NULL))
WHERE
	CASE
		WHEN [o].[DateTimeValue] IS NULL THEN [o].[DateTimeValue2]
		ELSE [o].[DateTimeValue]
	END <= @currentDate AND
	([o].[DateTimeValue2] IS NULL OR [o].[DateTimeValue2] >= @currentDate)
ORDER BY
	[o].[DateTimeValue2]

