BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = N'123' AND [r].[Value] IS NOT NULL THEN 1
		WHEN [r].[Value] <> N'123' OR [r].[Value] IS NULL THEN 0
		ELSE NULL
	END = CASE
		WHEN [r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL)
			THEN 1
		WHEN NOT ([r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL))
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN [r].[Value] = N'123' AND [r].[Value] IS NOT NULL THEN 1
		WHEN [r].[Value] <> N'123' OR [r].[Value] IS NULL THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN [r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL)
			THEN 1
		WHEN NOT ([r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL))
			THEN 0
		ELSE NULL
	END IS NULL
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

