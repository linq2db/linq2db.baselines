BeforeExecute
-- SqlServer.2019

SELECT
	[g_1].[Id],
	[g_1].[EmployerNumber],
	CONCAT(N'{', STRING_AGG(CONCAT(N'"', CAST([g_1].[TemplateId] AS NVarChar(11)), N'"', N': { "DateCreated": "', CAST([g_1].[DateCreated] AS NVarChar(27)), N'", "Link":"', [g_1].[Path_1], N'","fields":', CAST([g_1].[FieldResultsJson] AS NVarChar(4000))), N'},'), N'}}')
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

