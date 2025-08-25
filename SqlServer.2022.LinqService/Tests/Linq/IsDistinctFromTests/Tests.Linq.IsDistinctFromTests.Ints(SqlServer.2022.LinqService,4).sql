BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS DISTINCT FROM @value

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS DISTINCT FROM @value

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT DISTINCT FROM @value

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT DISTINCT FROM @value

