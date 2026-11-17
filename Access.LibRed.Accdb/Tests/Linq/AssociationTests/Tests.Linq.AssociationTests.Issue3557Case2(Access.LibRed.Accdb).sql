-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	CASE
		WHEN [t1].[Reason] IS NULL THEN ''
		ELSE [t1].[Reason]
	END
FROM
	(
		SELECT
			[i].[Id],
			(
				SELECT TOP 1
					[a_SubDatas].[Reason]
				FROM
					[SubData2] [a_SubDatas]
				WHERE
					[a_SubData].[Id] = [a_SubDatas].[Id]
			) as [Reason]
		FROM
			[Data] [i]
				LEFT JOIN [SubData1] [a_SubData] ON ([i].[Id] = [a_SubData].[Id])
	) [t1]
ORDER BY
	[t1].[Id]

