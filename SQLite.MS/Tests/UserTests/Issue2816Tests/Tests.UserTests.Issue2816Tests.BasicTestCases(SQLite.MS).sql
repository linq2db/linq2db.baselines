-- SQLite.MS SQLite

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR LTRIM([p].[Text], '	
                 　') = ''

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

