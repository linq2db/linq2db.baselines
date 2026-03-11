-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS VarChar)
FROM
	[Issue3360Table] [p_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	CAST('str' AS VarChar)
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

