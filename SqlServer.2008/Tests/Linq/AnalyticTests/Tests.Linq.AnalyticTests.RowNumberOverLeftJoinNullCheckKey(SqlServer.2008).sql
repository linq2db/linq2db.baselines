-- SqlServer.2008
SELECT
	[l].[Id],
	ROW_NUMBER() OVER (PARTITION BY [l].[Group] ORDER BY CASE
		WHEN [r].[Payload] IS NOT NULL THEN 1
		ELSE 0
	END, [l].[Id])
FROM
	[RowNumberLeftRecord] [l]
		LEFT JOIN [RowNumberRightRecord] [r] ON [l].[Id] = [r].[Id]
ORDER BY
	[l].[Id]

