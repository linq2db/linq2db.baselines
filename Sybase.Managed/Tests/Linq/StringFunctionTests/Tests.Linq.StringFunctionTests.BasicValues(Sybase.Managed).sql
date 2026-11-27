-- Sybase.Managed Sybase
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	[p].[Text] IS NULL OR [p].[Text] NOT LIKE '%[^	
                  　]%'

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[WhiteSpaceTextRow] [t1]

