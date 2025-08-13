BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] = [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] <> [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] > [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] < [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] >= [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] <= [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value4] = [g_1].[Value5] OR [g_1].[Value4] IS NULL AND [g_1].[Value5] IS NULL, 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value4] <> [g_1].[Value5] OR [g_1].[Value4] IS NULL AND [g_1].[Value5] IS NOT NULL OR [g_1].[Value4] IS NOT NULL AND [g_1].[Value5] IS NULL, 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value4] > [g_1].[Value5], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value4] < [g_1].[Value5], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value4] >= [g_1].[Value5], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value4] <= [g_1].[Value5], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] = [g_1].[Value4], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] <> [g_1].[Value4] OR [g_1].[Value4] IS NULL, 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] > [g_1].[Value4], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] < [g_1].[Value4], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] >= [g_1].[Value4], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value1] <= [g_1].[Value4], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value5] = [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value5] <> [g_1].[Value2] OR [g_1].[Value5] IS NULL, 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value5] > [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value5] < [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value5] >= [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[Value5] <= [g_1].[Value2], 1, 0) as [Key_1]
		FROM
			[BooleanTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

