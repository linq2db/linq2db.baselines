-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

