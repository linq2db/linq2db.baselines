-- SqlServer.Contained.MS SqlServer.2019

SELECT
	NULLIF([s].[String], N'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = N'abc' OR [s].[String] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = N'abc' OR [s].[String] IS NULL)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	NULLIF([s].[String], N'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = N'xyz' OR [s].[String] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = N'xyz' OR [s].[String] IS NULL)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	NULLIF([s].[NullableString], N'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = N'abc' OR [s].[NullableString] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = N'abc' OR [s].[NullableString] IS NULL)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	NULLIF([s].[NullableString], N'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = N'xyz' OR [s].[NullableString] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = N'xyz' OR [s].[NullableString] IS NULL)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

