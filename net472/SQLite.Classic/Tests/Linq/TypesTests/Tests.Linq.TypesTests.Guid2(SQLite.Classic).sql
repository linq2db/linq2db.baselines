BeforeExecute
-- SQLite.Classic SQLite
DECLARE @GuidValue  -- Guid
SET     @GuidValue = Cast(x'c070f9d2ac3587499cd55badb1757436' as blob)
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
-- SQLite.Classic SQLite
DECLARE @GuidValue  -- Guid
SET     @GuidValue = Cast(x'db2f934043154a4eac2cca371604fb4b' as blob)
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

