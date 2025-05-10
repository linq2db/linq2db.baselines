BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 0
		ELSE NULL
	END = CASE
		WHEN (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL)
			THEN 1
		WHEN (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END <> CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL)
			THEN 1
		WHEN (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END <> CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
		WHEN CASE
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END = 0 AND CASE
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN CASE
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END = 0 AND CASE
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 1
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(CASE
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 0
		ELSE NULL
	END = CASE
		WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END OR CASE
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL) AND
	(CASE
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 0
		ELSE NULL
	END = CASE
		WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END OR CASE
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 1
		WHEN IIF([r].[Value1] = [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value2] = [r].[Value4] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL
			THEN 1
		WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
			THEN 0
		ELSE NULL
	END IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 1
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 0
		ELSE NULL
	END <> CASE
		WHEN (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END = CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL)
			THEN 1
		WHEN (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END <> CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL)
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 1
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END = CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL)
			THEN 1
		WHEN (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END <> CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL)
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) <> CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END IS NULL
			THEN 1
		WHEN IIF([r].[Value1] <> [r].[Value2], 1, 0) = CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END AND CASE
			WHEN [r].[Value2] = [r].[Value5] AND [r].[Value5] IS NOT NULL
				THEN 1
			WHEN [r].[Value2] <> [r].[Value5] OR [r].[Value5] IS NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL
			THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END = CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL)
			THEN 1
		WHEN (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END <> CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			WHEN [r].[Value4] = [r].[Value1] AND [r].[Value4] IS NOT NULL
				THEN 0
			ELSE NULL
		END IS NULL AND CASE
			WHEN ([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL)
				THEN 1
			WHEN ([r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL) AND NOT ([r].[Value4] IS NULL AND [r].[Value5] IS NULL)
				THEN 0
			ELSE NULL
		END IS NULL)
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

