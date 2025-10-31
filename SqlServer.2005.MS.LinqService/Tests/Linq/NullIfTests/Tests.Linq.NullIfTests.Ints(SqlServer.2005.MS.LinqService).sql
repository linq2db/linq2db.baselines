BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

