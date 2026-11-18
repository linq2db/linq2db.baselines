-- SqlServer.Contained.MS SqlServer.2025
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

