-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT 0 AS [Id], 'Data 0' AS [Data]
		UNION ALL
		SELECT 1 AS [Id], 'Data 1' AS [Data]) [t1]
ORDER BY
	[t1].[Id]

