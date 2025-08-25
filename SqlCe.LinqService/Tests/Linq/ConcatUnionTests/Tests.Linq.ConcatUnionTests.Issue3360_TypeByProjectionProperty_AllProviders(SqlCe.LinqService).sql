BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[Id],
	CAST('str1' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[Id],
	CAST('str2' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS NVarChar) as [Str]
FROM
	[Issue3360Table] [p_1]

