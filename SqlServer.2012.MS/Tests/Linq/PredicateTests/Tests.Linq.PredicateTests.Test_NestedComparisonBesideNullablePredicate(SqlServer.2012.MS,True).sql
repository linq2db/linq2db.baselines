-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF([r].[Value4] > [r].[Value5], 1, 0) = CASE
		WHEN ([r].[Value2] = [r].[Value5]) THEN 1
		WHEN NOT ([r].[Value2] = [r].[Value5]) THEN 0
		ELSE NULL
	END

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

