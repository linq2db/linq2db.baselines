BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NOT NULL)
	DROP TABLE [BooleanTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NULL)
	CREATE TABLE [BooleanTable]
	(
		[Id]     Int NOT NULL,
		[Value1] Int NOT NULL,
		[Value2] Int NOT NULL,
		[Value4] Int     NULL,
		[Value5] Int     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [BooleanTable]
(
	[Id],
	[Value1],
	[Value2],
	[Value4],
	[Value5]
)
SELECT 1,0,0,NULL,NULL UNION ALL
SELECT 2,0,0,NULL,0 UNION ALL
SELECT 3,0,0,NULL,1 UNION ALL
SELECT 4,0,0,0,NULL UNION ALL
SELECT 5,0,0,0,0 UNION ALL
SELECT 6,0,0,0,1 UNION ALL
SELECT 7,0,0,1,NULL UNION ALL
SELECT 8,0,0,1,0 UNION ALL
SELECT 9,0,0,1,1 UNION ALL
SELECT 10,0,1,NULL,NULL UNION ALL
SELECT 11,0,1,NULL,0 UNION ALL
SELECT 12,0,1,NULL,1 UNION ALL
SELECT 13,0,1,0,NULL UNION ALL
SELECT 14,0,1,0,0 UNION ALL
SELECT 15,0,1,0,1 UNION ALL
SELECT 16,0,1,1,NULL UNION ALL
SELECT 17,0,1,1,0 UNION ALL
SELECT 18,0,1,1,1 UNION ALL
SELECT 19,1,0,NULL,NULL UNION ALL
SELECT 20,1,0,NULL,0 UNION ALL
SELECT 21,1,0,NULL,1 UNION ALL
SELECT 22,1,0,0,NULL UNION ALL
SELECT 23,1,0,0,0 UNION ALL
SELECT 24,1,0,0,1 UNION ALL
SELECT 25,1,0,1,NULL UNION ALL
SELECT 26,1,0,1,0 UNION ALL
SELECT 27,1,0,1,1 UNION ALL
SELECT 28,1,1,NULL,NULL UNION ALL
SELECT 29,1,1,NULL,0 UNION ALL
SELECT 30,1,1,NULL,1 UNION ALL
SELECT 31,1,1,0,NULL UNION ALL
SELECT 32,1,1,0,0 UNION ALL
SELECT 33,1,1,0,1 UNION ALL
SELECT 34,1,1,1,NULL UNION ALL
SELECT 35,1,1,1,0 UNION ALL
SELECT 36,1,1,1,1

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value4] = [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		ELSE 0
	END = CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] = [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] = [r].[Value2] AND [r].[Value4] IS NOT NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value2] = [r].[Value1] THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value2] = [r].[Value1] THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value4] = [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value5] = [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value4] = [r].[Value5] AND [r].[Value4] IS NOT NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value5] = [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] >= [r].[Value2] THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		ELSE 0
	END = CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] >= [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] <> [r].[Value2] OR [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] >= [r].[Value2] THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value2] <> [r].[Value1] THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		WHEN [r].[Value1] >= [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value2] <> [r].[Value1] THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		ELSE 0
	END = CASE
		WHEN [r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

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
		ELSE 0
	END <> CASE
		WHEN [r].[Value5] <> [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NOT NULL)
	DROP TABLE [BooleanTable]

