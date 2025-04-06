BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value],
	N'M' + CAST([t1].[Id] AS NVarChar(Max))
FROM
	[InstanceClass] [t1]

