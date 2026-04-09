-- SqlServer.2019.MS SqlServer.2019

WITH [CTE_1] ([Sample_IntColumn], [Sample_DateColumn])
AS
(
	SELECT
		[x].[IntColumn],
		[x].[DateColumn]
	FROM
		(
			SELECT
				ROW_NUMBER() OVER(PARTITION BY [sample_1].[IntColumn] ORDER BY [sample_1].[DateColumn]) as [RowNum_1],
				[sample_1].[IntColumn],
				[sample_1].[DateColumn]
			FROM
				[SampleTable] [sample_1]
		) [x]
	WHERE
		[x].[RowNum_1] = 1
)
UPDATE
	[u]
SET
	[u].[Value] = [u].[Value] * 10
FROM
	[SampleTable] [u],
	[CTE_1] [source]
WHERE
	[u].[IntColumn] = [source].[Sample_IntColumn] AND [u].[DateColumn] = [source].[Sample_DateColumn]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[IntColumn],
	[t1].[DateColumn],
	[t1].[Value]
FROM
	[SampleTable] [t1]
ORDER BY
	[t1].[IntColumn],
	[t1].[DateColumn]

