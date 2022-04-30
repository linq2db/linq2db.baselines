BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @date_1  -- Date
SET     @date_1 = '2020-02-29'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	DateTime([t1].[DateTimeValue]) = DateTime(@date_1)
LIMIT @take

