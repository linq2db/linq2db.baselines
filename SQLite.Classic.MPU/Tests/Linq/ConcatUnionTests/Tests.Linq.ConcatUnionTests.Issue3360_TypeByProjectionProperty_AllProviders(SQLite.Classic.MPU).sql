-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	CAST('str1' AS VarChar)
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS VarChar)
FROM
	[Issue3360Table] [p_1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	CAST('str2' AS VarChar)
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS VarChar)
FROM
	[Issue3360Table] [p_1]

