BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[fact_1].[Id],
	[leftTag].[Id],
	[leftTag].[FactId],
	[leftTag].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [leftTag] ON ([fact_1].[Id] = [leftTag].[FactId])
WHERE
	[fact_1].[Id] > 3
ORDER BY
	[fact_1].[Id]

