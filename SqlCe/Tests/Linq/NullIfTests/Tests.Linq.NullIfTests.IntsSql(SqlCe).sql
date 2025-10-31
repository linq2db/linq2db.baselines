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
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[Int] = 2

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 2

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
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[Int] = 4

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 4

-- SqlCe

SELECT
	[s].[Int] as [Int_1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	1 = 0

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]

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
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL)

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
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL)

-- SqlCe

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] IS NOT NULL

