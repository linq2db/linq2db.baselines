-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[l].[Id],
	ROW_NUMBER() OVER (PARTITION BY [l].[Group] ORDER BY ([r].[Payload] IS NOT NULL) DESC, [l].[Id])
FROM
	[RowNumberLeftRecord] [l]
		LEFT JOIN [RowNumberRightRecord] [r] ON ([l].[Id] = [r].[Id])
ORDER BY
	[l].[Id]

