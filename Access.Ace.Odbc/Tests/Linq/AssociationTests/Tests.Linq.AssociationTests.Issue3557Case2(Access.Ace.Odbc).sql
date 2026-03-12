-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	IIF([t1].[Reason] IS NULL, '', [t1].[Reason])
FROM
	(
		SELECT
			[i].[Id],
			(
				SELECT TOP 1
					[a_SubDatas].[Reason]
				FROM
					[SubData2] [a_SubDatas]
				WHERE
					[a_SubData].[Id] = [a_SubDatas].[Id]
			) as [Reason]
		FROM
			[Data] [i]
				LEFT JOIN [SubData1] [a_SubData] ON ([i].[Id] = [a_SubData].[Id])
	) [t1]
ORDER BY
	[t1].[Id]

