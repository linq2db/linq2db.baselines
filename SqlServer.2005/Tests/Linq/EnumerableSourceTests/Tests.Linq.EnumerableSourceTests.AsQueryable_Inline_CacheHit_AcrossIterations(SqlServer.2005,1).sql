-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT 10 AS [Id], N'Data 10' AS [Data]
		UNION ALL
		SELECT 11, N'Data 11') [t1]

