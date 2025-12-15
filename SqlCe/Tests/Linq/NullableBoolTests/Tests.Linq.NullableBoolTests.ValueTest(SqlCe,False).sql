-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

