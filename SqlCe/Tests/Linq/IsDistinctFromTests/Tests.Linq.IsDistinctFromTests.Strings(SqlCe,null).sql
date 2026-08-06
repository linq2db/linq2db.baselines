-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

-- SqlCe
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

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
	[s].[NullableString] IS NULL

