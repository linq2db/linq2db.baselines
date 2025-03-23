BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[i].[Id],
	(
		SELECT TOP 1
			[a_SubDatas].[Reason]
		FROM
			[SubData2] [a_SubDatas]
		WHERE
			[a_SubData].[Id] IS NOT NULL AND [a_SubData].[Id] = [a_SubDatas].[Id]
	)
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON ([i].[Id] = [a_SubData].[Id])
ORDER BY
	[i].[Id]

