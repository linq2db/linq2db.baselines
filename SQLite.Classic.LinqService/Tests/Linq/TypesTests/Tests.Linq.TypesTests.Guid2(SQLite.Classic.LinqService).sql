BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p  -- Guid
SET     @p = X'DB2F934043154A4EAC2CCA371604FB4B'

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
	[p].[GuidValue] = @p
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p  -- Guid
SET     @p = X'C070F9D2AC3587499CD55BADB1757436'

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
	[p].[GuidValue] = @p
LIMIT 2

