BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	NULLIF([s].[String], N'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] = N'abc' OR [x].[String] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = N'abc' OR [x].[String] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	NULLIF([s].[String], N'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] = N'xyz' OR [x].[String] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = N'xyz' OR [x].[String] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	NULLIF([s].[NullableString], N'abc')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] = N'abc' OR [x].[NullableString] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = N'abc' OR [x].[NullableString] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	NULLIF([s].[NullableString], N'xyz')
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] = N'xyz' OR [x].[NullableString] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = N'xyz' OR [x].[NullableString] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NOT NULL

