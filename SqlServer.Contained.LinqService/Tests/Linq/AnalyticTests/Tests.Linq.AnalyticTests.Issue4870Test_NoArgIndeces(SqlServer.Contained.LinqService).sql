BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[g_1].[Id],
	[g_1].[EmployerNumber],
	concat('{',string_agg(concat('"', [g_1].[TemplateId], '"', ': {', '"DateCreated":"', cast([g_1].[DateCreated] as datetime2), '", "Link":"', [g_1].[Path_1], '","fields":',  [g_1].[FieldResultsJson]), '},'), '}}') 
FROM
	(
		SELECT
			RANK() OVER(PARTITION BY [dr].[Id], [dr].[TemplateId] ORDER BY [dr].[Id] DESC) as [Rank],
			[dr].[EmployerNumber],
			[dr].[Id],
			[dr].[TemplateId],
			[dr].[DateCreated],
			[dr].[Path] as [Path_1],
			[dr].[FieldResultsJson]
		FROM
			[Issue4870Document] [dr]
	) [g_1]
WHERE
	[g_1].[Rank] = 1
GROUP BY
	[g_1].[EmployerNumber],
	[g_1].[Id]

