BeforeExecute
-- SQLite.MS SQLite
DECLARE @charValue Char(1) -- AnsiStringFixedLength
SET     @charValue = 'A'
DECLARE @intValue Char(1) -- AnsiStringFixedLength
SET     @intValue = 'A'
DECLARE @stringIntValue  -- Int32
SET     @stringIntValue = 1
DECLARE @doubleValue  -- Double
SET     @doubleValue = 1

SELECT
	COUNT(*)
FROM
	[EnumCharTable] [t]
WHERE
	[t].[EnumValue] = @charValue AND
	[t].[EnumValue] = @intValue AND
	[t].[IntValue] = @stringIntValue AND
	[t].[DoubleValue] = @doubleValue

BeforeExecute
-- SQLite.MS SQLite
DECLARE @charValue Char(1) -- AnsiStringFixedLength
SET     @charValue = 'A'
DECLARE @intValue Char(1) -- AnsiStringFixedLength
SET     @intValue = 'A'
DECLARE @stringIntValue  -- Int32
SET     @stringIntValue = 1
DECLARE @doubleValue  -- Double
SET     @doubleValue = 1

SELECT
	COUNT(*)
FROM
	[EnumCharTable] [t]
WHERE
	@charValue = [t].[EnumValue] AND
	@intValue = [t].[EnumValue] AND
	@stringIntValue = [t].[IntValue] AND
	@doubleValue = [t].[DoubleValue]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[EnumCharTable] [t]
WHERE
	[t].[EnumValue] IS NULL AND
	[t].[EnumValue] IS NULL AND
	[t].[IntValue] IS NULL AND
	[t].[DoubleValue] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[EnumCharTable] [t]
WHERE
	[t].[EnumValue] IS NULL AND
	[t].[EnumValue] IS NULL AND
	[t].[IntValue] IS NULL AND
	[t].[DoubleValue] IS NULL

