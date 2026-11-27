-- Sybase.Managed Sybase
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	NOT ([p].[Text] IS NULL OR [p].[Text] NOT LIKE '%[^	
                  　]%')

