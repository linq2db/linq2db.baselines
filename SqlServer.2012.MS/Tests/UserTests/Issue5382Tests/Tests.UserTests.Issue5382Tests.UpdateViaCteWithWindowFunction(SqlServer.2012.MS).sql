-- SqlServer.2012.MS SqlServer.2012

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
	[target]
SET
	[target].[Value] = [target].[Value] * 10
FROM
	[SampleTable] [target]
		INNER JOIN [CTE_1] [source] ON [target].[IntColumn] = [source].[Sample_IntColumn] AND [target].[DateColumn] = [source].[Sample_DateColumn]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[IntColumn],
	[t1].[DateColumn],
	[t1].[Value]
FROM
	[SampleTable] [t1]
ORDER BY
	[t1].[IntColumn],
	[t1].[DateColumn]

