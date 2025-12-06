-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

-- SqlServer.Contained SqlServer.2019

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]

-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

-- SqlServer.Contained SqlServer.2019

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

