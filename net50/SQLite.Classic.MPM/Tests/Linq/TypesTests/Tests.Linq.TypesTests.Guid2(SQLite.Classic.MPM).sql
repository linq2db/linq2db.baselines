﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @GuidValue_1  -- Guid
SET     @GuidValue_1 = Cast(x'c070f9d2ac3587499cd55badb1757436' as blob)
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
	[p].[GuidValue] = @GuidValue_1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @GuidValue_1  -- Guid
SET     @GuidValue_1 = Cast(x'db2f934043154a4eac2cca371604fb4b' as blob)
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
	[p].[GuidValue] = @GuidValue_1
LIMIT @take

