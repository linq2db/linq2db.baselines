BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[_1].[ID],
	[_1].[MoneyValue],
	[_1].[DateTimeValue],
	[_1].[DateTimeValue2],
	[_1].[BoolValue],
	[_1].[GuidValue],
	[_1].[SmallIntValue],
	[_1].[IntValue],
	[_1].[BigIntValue],
	[_1].[StringValue]
FROM
	(
		SELECT
			Date([_].[DateTimeValue]) as [Date_1],
			[_].[ID],
			[_].[MoneyValue],
			[_].[DateTimeValue],
			[_].[DateTimeValue2],
			[_].[BoolValue],
			[_].[GuidValue],
			[_].[SmallIntValue],
			[_].[IntValue],
			[_].[BigIntValue],
			[_].[StringValue]
		FROM
			[LinqDataTypes] [_]
	) [_1]
WHERE
	DateTime([_1].[Date_1]) = DateTime(Date(Date('2009-09-20')))

