BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(([r].[Value1] = [r].[Value2]), 1, 0) = CASE
		WHEN ([r].[Value4] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value4] = [r].[Value5]) THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value1] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value5]) THEN 0
		ELSE NULL
	END = CASE
		WHEN ([r].[Value4] = [r].[Value2]) THEN 1
		WHEN NOT ([r].[Value4] = [r].[Value2]) THEN 0
		ELSE NULL
	END OR
	([r].[Value1] IS NULL OR [r].[Value5] IS NULL) AND ([r].[Value4] IS NULL OR [r].[Value2] IS NULL)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(([r].[Value1] = [r].[Value2]), 1, 0) <> CASE
		WHEN ([r].[Value4] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value4] = [r].[Value5]) THEN 0
		ELSE NULL
	END OR
	[r].[Value4] IS NULL OR [r].[Value5] IS NULL

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value1] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value5]) THEN 0
		ELSE NULL
	END <> CASE
		WHEN ([r].[Value4] = [r].[Value2]) THEN 1
		WHEN NOT ([r].[Value4] = [r].[Value2]) THEN 0
		ELSE NULL
	END OR
	([r].[Value1] IS NULL OR [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL OR [r].[Value2] IS NULL) OR
	NOT ([r].[Value1] IS NULL OR [r].[Value5] IS NULL) AND ([r].[Value4] IS NULL OR [r].[Value2] IS NULL)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(([r].[Value1] = [r].[Value2]), 1, 0) = IIF(([r].[Value2] = [r].[Value1]), 1, 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(([r].[Value1] = [r].[Value2]), 1, 0) <> IIF(([r].[Value2] = [r].[Value1]), 1, 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value4] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value4] = [r].[Value5]) THEN 0
		ELSE NULL
	END = CASE
		WHEN ([r].[Value5] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value5] = [r].[Value4]) THEN 0
		ELSE NULL
	END OR
	([r].[Value4] IS NULL OR [r].[Value5] IS NULL) AND ([r].[Value5] IS NULL OR [r].[Value4] IS NULL)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value4] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value4] = [r].[Value5]) THEN 0
		ELSE NULL
	END <> CASE
		WHEN ([r].[Value5] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value5] = [r].[Value4]) THEN 0
		ELSE NULL
	END OR
	([r].[Value4] IS NULL OR [r].[Value5] IS NULL) AND NOT ([r].[Value5] IS NULL OR [r].[Value4] IS NULL) OR
	NOT ([r].[Value4] IS NULL OR [r].[Value5] IS NULL) AND ([r].[Value5] IS NULL OR [r].[Value4] IS NULL)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value2], 1, 0) = CASE
		WHEN ([r].[Value4] <> [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value4] <> [r].[Value5]) THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL, 1, 0) = CASE
		WHEN ([r].[Value4] <> [r].[Value2]) THEN 1
		WHEN NOT ([r].[Value4] <> [r].[Value2]) THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value2], 1, 0) <> CASE
		WHEN ([r].[Value4] <> [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value4] <> [r].[Value5]) THEN 0
		ELSE NULL
	END OR
	[r].[Value4] IS NULL OR [r].[Value5] IS NULL

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL, 1, 0) <> CASE
		WHEN ([r].[Value4] <> [r].[Value2]) THEN 1
		WHEN NOT ([r].[Value4] <> [r].[Value2]) THEN 0
		ELSE NULL
	END OR
	[r].[Value4] IS NULL OR [r].[Value2] IS NULL

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value2], 1, 0) = IIF(([r].[Value2] <> [r].[Value1]), 1, 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value2], 1, 0) <> IIF(([r].[Value2] <> [r].[Value1]), 1, 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL, 1, 0) = CASE
		WHEN ([r].[Value5] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value5] <> [r].[Value4]) THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL, 1, 0) <> CASE
		WHEN ([r].[Value5] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value5] <> [r].[Value4]) THEN 0
		ELSE NULL
	END OR
	[r].[Value5] IS NULL OR [r].[Value4] IS NULL

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

