-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT 10 AS [Id], 'Data 10' AS [Data]
		UNION ALL
		SELECT 11 AS [Id], 'Data 11' AS [Data]) [t1]

