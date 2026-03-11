-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

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

