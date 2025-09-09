BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[i].[Id],
	IIF([a_SubData].[Id] IS NULL, NULL, (
		SELECT TOP (1)
			[a_SubDatas].[Reason]
		FROM
			[SubData2] [a_SubDatas]
		WHERE
			[a_SubData].[Id] = [a_SubDatas].[Id]
	))
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON [i].[Id] = [a_SubData].[Id]
ORDER BY
	[i].[Id]

