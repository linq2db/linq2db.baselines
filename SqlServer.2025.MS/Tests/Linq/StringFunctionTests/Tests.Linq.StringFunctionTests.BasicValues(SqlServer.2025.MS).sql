-- SqlServer.2025.MS SqlServer.2025
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	[p].[Text] IS NULL OR TRIM(N'	
                  　' FROM [p].[Text]) = N''

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[WhiteSpaceTextRow] [t1]

