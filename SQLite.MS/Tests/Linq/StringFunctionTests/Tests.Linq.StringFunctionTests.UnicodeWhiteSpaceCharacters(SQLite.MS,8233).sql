-- SQLite.MS SQLite
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	NOT ([p].[Text] IS NULL OR LTRIM([p].[Text], '	
                  　') = '')

