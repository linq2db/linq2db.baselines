-- SqlCe

SELECT
	[t].[Value1] + CAST([t].[Value2] AS NVarChar(11)) + Lower(CAST([t].[Value3] AS NChar(36))) as [Concat]
FROM
	[StringConcatIntGuidNullEntity] [t]
ORDER BY
	[t].[ID]

-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatIntGuidNullEntity] [t1]

