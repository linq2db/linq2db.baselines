BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) = CASE
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN [r].[Value1] = [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END = CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value1] = [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) <> CASE
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN [r].[Value1] = [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END <> CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value1] = [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN [r].[Value1] = [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) = IIF([r].[Value2] = [r].[Value1], 1, 0)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) <> IIF([r].[Value2] = [r].[Value1], 1, 0)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END = CASE
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END <> CASE
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 1
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 1
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN [r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] < [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END = CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] < [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 1
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
			THEN 1
		WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN [r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] < [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END <> CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] < [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN [r].[Value1] >= [r].[Value5] AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] < [r].[Value5] OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value2], 1, 0) = IIF([r].[Value2] <> [r].[Value1], 1, 0)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] >= [r].[Value2], 1, 0) <> IIF([r].[Value2] <> [r].[Value1], 1, 0)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN [r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] < [r].[Value5] OR [r].[Value4] IS NULL OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END = CASE
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 1
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] < [r].[Value5] OR [r].[Value4] IS NULL OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 1
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHEN [r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] < [r].[Value5] OR [r].[Value4] IS NULL OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END <> CASE
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 1
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] < [r].[Value5] OR [r].[Value4] IS NULL OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 1
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN [r].[Value4] >= [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL
			THEN 1
		WHEN [r].[Value4] < [r].[Value5] OR [r].[Value4] IS NULL OR [r].[Value5] IS NULL
			THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ([r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NULL)
			THEN 1
		WHEN ([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

