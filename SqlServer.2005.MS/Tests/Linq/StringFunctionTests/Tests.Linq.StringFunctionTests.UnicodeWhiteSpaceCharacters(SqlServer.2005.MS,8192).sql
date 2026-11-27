-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	NOT ([p].[Text] IS NULL OR [p].[Text] NOT LIKE N'%[^	
                  　]%')

