-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Data] as [Data_1]
FROM
	(
		SELECT 20 AS [Id], 'Data 20' AS [Data]
		UNION ALL
		SELECT 21 AS [Id], 'Data 21' AS [Data]
		UNION ALL
		SELECT 22 AS [Id], 'Data 22' AS [Data]) [t1]

