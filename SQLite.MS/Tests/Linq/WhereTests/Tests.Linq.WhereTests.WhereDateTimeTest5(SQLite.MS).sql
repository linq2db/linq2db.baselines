BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_1].[ID],
	[_1].[MoneyValue],
	[_1].[DateTimeValue],
	[_1].[BoolValue],
	[_1].[GuidValue],
	[_1].[BinaryValue],
	[_1].[SmallIntValue],
	[_1].[StringValue]
FROM
	(
		SELECT
			Date([_].[DateTimeValue]) as [Date_1],
			[_].[ID],
			[_].[MoneyValue],
			[_].[DateTimeValue],
			[_].[BoolValue],
			[_].[GuidValue],
			[_].[BinaryValue],
			[_].[SmallIntValue],
			[_].[StringValue]
		FROM
			[LinqDataTypes] [_]
	) [_1]
WHERE
	DateTime([_1].[Date_1]) = DateTime(Date(Date('2009-09-20')))

