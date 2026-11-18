-- SqlServer.CS SqlServer.2025
SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

-- SqlServer.CS SqlServer.2025
SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

-- SqlServer.CS SqlServer.2025
SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]

-- SqlServer.CS SqlServer.2025
SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

-- SqlServer.CS SqlServer.2025
SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

-- SqlServer.CS SqlServer.2025
SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

