BeforeExecute
--  SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS NVarChar(11)) = CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS NVarChar(11))

