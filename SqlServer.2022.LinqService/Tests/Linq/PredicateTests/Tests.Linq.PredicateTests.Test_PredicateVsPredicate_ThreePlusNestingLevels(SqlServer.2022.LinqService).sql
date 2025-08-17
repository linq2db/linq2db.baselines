BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(IIF([r].[Value1] <> [r].[Value2], 1, 0) = IIF([r].[Value1] = [r].[Value4], 1, 0), 1, 0) = IIF(IIF([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL, 1, 0) = IIF([r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0), 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) <> IIF([r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL, 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) <> IIF([r].[Value4] = [r].[Value1], 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) <> IIF([r].[Value4] = [r].[Value1], 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value1] = [r].[Value2], 1, 0) <> IIF([r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL, 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(IIF([r].[Value1] = [r].[Value2], 1, 0) = IIF([r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL, 1, 0), 1, 0) = IIF([r].[Value1] = [r].[Value4], 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(IIF([r].[Value1] <> [r].[Value2], 1, 0) <> IIF([r].[Value2] = [r].[Value5], 1, 0), 1, 0) <> IIF(IIF([r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL, 1, 0) = IIF([r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL, 1, 0), 1, 0)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

