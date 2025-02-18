BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(Max)) + CAST([t].[Value] AS NVarChar(Max)) = CAST([t].[Id] AS NVarChar(Max)) + CAST([t].[Value] AS VarChar(11))

