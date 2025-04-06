BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	N'M' + CAST([t1].[Id] AS NVarChar(Max))
FROM
	[InstanceClass] [t1]

