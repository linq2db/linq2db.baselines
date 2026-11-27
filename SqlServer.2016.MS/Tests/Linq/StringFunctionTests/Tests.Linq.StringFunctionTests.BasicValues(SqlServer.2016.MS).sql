-- SqlServer.2016.MS SqlServer.2016
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	[p].[Text] IS NULL OR [p].[Text] NOT LIKE N'%[^	
                  　]%'

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[WhiteSpaceTextRow] [t1]

