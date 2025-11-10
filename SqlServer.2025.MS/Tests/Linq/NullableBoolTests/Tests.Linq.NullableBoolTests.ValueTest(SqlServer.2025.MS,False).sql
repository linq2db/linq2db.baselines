-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

