BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[fact_1].[Id],
	[leftTag].[Id],
	[leftTag].[FactId],
	[leftTag].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [leftTag] ON [leftTag].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3
ORDER BY
	[fact_1].[Id]

