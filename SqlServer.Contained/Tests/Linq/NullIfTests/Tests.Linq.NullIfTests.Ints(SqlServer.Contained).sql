﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] = 2

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 2

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] = 4

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 4

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] IS NOT NULL

