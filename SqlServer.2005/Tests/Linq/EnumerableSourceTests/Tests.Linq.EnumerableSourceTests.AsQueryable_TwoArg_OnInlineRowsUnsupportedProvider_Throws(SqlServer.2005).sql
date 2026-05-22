-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT 0 AS [Id], N'Data 0' AS [Data]
		UNION ALL
		SELECT 1, N'Data 1'
		UNION ALL
		SELECT 2, N'Data 2') [t1]

