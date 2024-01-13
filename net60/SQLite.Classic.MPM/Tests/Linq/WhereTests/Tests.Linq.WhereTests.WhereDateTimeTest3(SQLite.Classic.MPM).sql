BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
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
WHERE
	DateTime([_].[DateTimeValue]) = DateTime(Date('2009-09-27'))

