BeforeExecute
-- SQLite.MS SQLite
DECLARE @GuidValue  -- Guid
SET     @GuidValue = X'C070F9D2AC3587499CD55BADB1757436'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p].[ID],
	[p].[MoneyValue],
	[p].[DateTimeValue],
	[p].[BoolValue],
	[p].[GuidValue],
	[p].[BinaryValue],
	[p].[SmallIntValue],
	[p].[StringValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @GuidValue
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GuidValue  -- Guid
SET     @GuidValue = X'DB2F934043154A4EAC2CCA371604FB4B'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p].[ID],
	[p].[MoneyValue],
	[p].[DateTimeValue],
	[p].[BoolValue],
	[p].[GuidValue],
	[p].[BinaryValue],
	[p].[SmallIntValue],
	[p].[StringValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @GuidValue
LIMIT @take

