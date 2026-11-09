-- SqlServer.2008.MS SqlServer.2008
SELECT
	[x].[Id],
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN [x].[NullableIntValue] IS NULL THEN NULL
		WHEN [x].[NullableIntValue] > 40 THEN 1
		ELSE 0
	END, [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

