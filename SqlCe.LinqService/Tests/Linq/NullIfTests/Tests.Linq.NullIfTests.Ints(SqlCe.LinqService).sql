BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CASE
		WHEN [s].[Int] = 2 THEN NULL
		ELSE [s].[Int]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CASE
		WHEN [s].[Int] = 4 THEN NULL
		ELSE [s].[Int]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[s].[Int] as [Int_1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CASE
		WHEN [s].[NullableInt] = 2 THEN NULL
		ELSE [s].[NullableInt]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CASE
		WHEN [s].[NullableInt] = 4 THEN NULL
		ELSE [s].[NullableInt]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

