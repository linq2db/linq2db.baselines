BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR (TRIM(N'	
                 　' FROM [p].[Text])) = N''

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

