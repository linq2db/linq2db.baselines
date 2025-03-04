BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(4000)) + CAST([t].[Value] AS NVarChar(4000)) = CAST([t].[Id] AS NVarChar(4000)) + CAST([t].[Value] AS NVarChar(11))

