-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[f].[Id],
	[ft].[Id] as [Id_1],
	[ft].[FactId],
	[ft].[Name]
FROM
	[Tag] [ft]
		FULL JOIN [Fact] [f] ON ([ft].[FactId] = [f].[Id])
WHERE
	[f].[Id] > 3 OR [ft].[FactId] > 3

