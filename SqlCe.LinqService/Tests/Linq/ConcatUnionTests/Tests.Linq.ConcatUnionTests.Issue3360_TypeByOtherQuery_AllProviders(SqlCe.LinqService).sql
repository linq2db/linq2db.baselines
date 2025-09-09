BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[Id],
	CAST('str' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

