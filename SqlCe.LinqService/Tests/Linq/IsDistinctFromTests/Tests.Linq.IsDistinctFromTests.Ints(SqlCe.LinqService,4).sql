BeforeExecute
-- SqlCe (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> @value

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = @value

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value)

