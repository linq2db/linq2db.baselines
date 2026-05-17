-- SqlServer.2014.MS SqlServer.2014

WITH [CTE_1] ([Sample_IntColumn], [RowNum_1], [Sample_Value])
AS
(
	SELECT
		[sample_1].[IntColumn],
		ROW_NUMBER() OVER(PARTITION BY [sample_1].[IntColumn] ORDER BY [sample_1].[DateColumn]),
		[sample_1].[Value]
	FROM
		[SampleTable] [sample_1]
)
DELETE [query]
FROM
	[CTE_1] [query]
		INNER JOIN [CTE_1] [prev] ON [prev].[Sample_IntColumn] = [query].[Sample_IntColumn] AND [prev].[RowNum_1] = [query].[RowNum_1] - 1
WHERE
	[prev].[Sample_Value] = [query].[Sample_Value]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[IntColumn],
	[t1].[DateColumn],
	[t1].[Value]
FROM
	[SampleTable] [t1]
ORDER BY
	[t1].[IntColumn],
	[t1].[DateColumn]

