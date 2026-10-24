-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

