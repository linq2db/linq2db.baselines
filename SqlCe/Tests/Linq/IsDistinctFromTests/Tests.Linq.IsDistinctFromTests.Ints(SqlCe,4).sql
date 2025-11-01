-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> @value

-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value

-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = @value

-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value)

