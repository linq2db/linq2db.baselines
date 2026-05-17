-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT 20 AS [Id], N'Data 20' AS [Data]
		UNION ALL
		SELECT 21, N'Data 21'
		UNION ALL
		SELECT 22, N'Data 22') [t1]

