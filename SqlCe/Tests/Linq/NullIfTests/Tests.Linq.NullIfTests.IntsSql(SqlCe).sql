-- SqlCe

SELECT
	CASE
		WHEN [s].[Int] = 2 THEN NULL
		ELSE [s].[Int]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

-- SqlCe

SELECT
	CASE
		WHEN [s].[Int] = 4 THEN NULL
		ELSE [s].[Int]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

-- SqlCe

SELECT
	[s].[Int] as [Int_1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	1 = 0

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]

-- SqlCe

SELECT
	CASE
		WHEN [s].[NullableInt] = 2 THEN NULL
		ELSE [s].[NullableInt]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

-- SqlCe

SELECT
	CASE
		WHEN [s].[NullableInt] = 4 THEN NULL
		ELSE [s].[NullableInt]
	END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

-- SqlCe

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

