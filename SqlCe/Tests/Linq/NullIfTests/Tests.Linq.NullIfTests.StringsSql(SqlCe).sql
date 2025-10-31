-- SqlCe

SELECT
	CASE
		WHEN [s].[String] = 'abc' THEN NULL
		ELSE [s].[String]
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
	[x].[String] = 'abc' OR [x].[String] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = 'abc' OR [x].[String] IS NULL)

-- SqlCe

SELECT
	CASE
		WHEN [s].[String] = 'xyz' THEN NULL
		ELSE [s].[String]
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
	[x].[String] = 'xyz' OR [x].[String] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = 'xyz' OR [x].[String] IS NULL)

-- SqlCe

SELECT
	[s].[String]
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
	[x].[String] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[String] IS NOT NULL

-- SqlCe

SELECT
	CASE
		WHEN [s].[NullableString] = 'abc' THEN NULL
		ELSE [s].[NullableString]
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
	[x].[NullableString] = 'abc' OR [x].[NullableString] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = 'abc' OR [x].[NullableString] IS NULL)

-- SqlCe

SELECT
	CASE
		WHEN [s].[NullableString] = 'xyz' THEN NULL
		ELSE [s].[NullableString]
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
	[x].[NullableString] = 'xyz' OR [x].[NullableString] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = 'xyz' OR [x].[NullableString] IS NULL)

-- SqlCe

SELECT
	[s].[NullableString]
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
	[x].[NullableString] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NOT NULL

