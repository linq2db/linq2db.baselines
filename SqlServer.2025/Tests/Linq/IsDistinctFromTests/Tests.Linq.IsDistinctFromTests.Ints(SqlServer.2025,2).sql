-- SqlServer.2025 SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS DISTINCT FROM @value

-- SqlServer.2025 SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS DISTINCT FROM @value

-- SqlServer.2025 SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT DISTINCT FROM @value

-- SqlServer.2025 SqlServer.2022
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT DISTINCT FROM @value

