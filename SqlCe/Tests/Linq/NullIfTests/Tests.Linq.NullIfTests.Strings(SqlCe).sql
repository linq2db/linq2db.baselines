-- SqlCe
SELECT
	CASE
		WHEN [s].[String] = 'abc' THEN NULL
		ELSE [s].[String]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = 'abc' OR [s].[String] IS NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = 'abc' OR [s].[String] IS NULL)

-- SqlCe
SELECT
	CASE
		WHEN [s].[String] = 'xyz' THEN NULL
		ELSE [s].[String]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = 'xyz' OR [s].[String] IS NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = 'xyz' OR [s].[String] IS NULL)

-- SqlCe
SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

-- SqlCe
SELECT
	CASE
		WHEN [s].[NullableString] = 'abc' THEN NULL
		ELSE [s].[NullableString]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = 'abc' OR [s].[NullableString] IS NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = 'abc' OR [s].[NullableString] IS NULL)

-- SqlCe
SELECT
	CASE
		WHEN [s].[NullableString] = 'xyz' THEN NULL
		ELSE [s].[NullableString]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = 'xyz' OR [s].[NullableString] IS NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = 'xyz' OR [s].[NullableString] IS NULL)

-- SqlCe
SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

