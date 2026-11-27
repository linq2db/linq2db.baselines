-- SqlServer.2017.MS SqlServer.2017
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	NOT ([p].[Text] IS NULL OR TRIM(N'	
                  　' FROM [p].[Text]) = N'' AND TRIM(N'	
                  　' FROM [p].[Text]) IS NOT NULL)

