-- SqlServer.2017

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR (TRIM(N'	
                 　' FROM [p].[Text])) = N''

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

