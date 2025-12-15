-- SqlServer.2017

SELECT
	[g_1].[Id],
	STRING_AGG([g_1].[ValueVarChar], ','),
	STRING_AGG([g_1].[ValueNVarChar], N',')
FROM
	[Issue4816Table] [g_1]
GROUP BY
	[g_1].[Id]



