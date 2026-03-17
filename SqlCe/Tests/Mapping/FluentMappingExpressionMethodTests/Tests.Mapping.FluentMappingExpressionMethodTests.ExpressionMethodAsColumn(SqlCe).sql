-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1],
	'M' + CAST([t1].[Id] AS NVarChar(11)) as [EntityMaterialized]
FROM
	[InstanceClass] [t1]

