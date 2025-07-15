BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS VarChar(Max))
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[Id],
	CAST('str' AS VarChar(Max))
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

