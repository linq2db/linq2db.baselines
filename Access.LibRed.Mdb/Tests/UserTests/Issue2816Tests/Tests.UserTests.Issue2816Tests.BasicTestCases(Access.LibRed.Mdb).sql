-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR LTRIM([p].[Text]) = ''

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

