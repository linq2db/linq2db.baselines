-- SqlServer.2019

SELECT TOP (1)
	[t1].[MyGroupedCount]
FROM
	(
		SELECT
			COUNT(IIF([g_1].[Status] = 3, 1, NULL)) as [MyGroupedCount]
		FROM
			[Issue1192Table] [g_1]
		WHERE
			[g_1].[MyOtherId] = 12
	) [t1]

