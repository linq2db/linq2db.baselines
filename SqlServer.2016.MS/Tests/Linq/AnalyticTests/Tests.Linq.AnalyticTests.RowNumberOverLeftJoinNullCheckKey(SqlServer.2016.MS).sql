-- SqlServer.2016.MS SqlServer.2016
SELECT
	[l].[Id],
	ROW_NUMBER() OVER (PARTITION BY [l].[Group] ORDER BY IIF([r].[Payload] IS NOT NULL, 1, 0), [l].[Id])
FROM
	[RowNumberLeftRecord] [l]
		LEFT JOIN [RowNumberRightRecord] [r] ON [l].[Id] = [r].[Id]
ORDER BY
	[l].[Id]

