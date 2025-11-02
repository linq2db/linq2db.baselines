-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

