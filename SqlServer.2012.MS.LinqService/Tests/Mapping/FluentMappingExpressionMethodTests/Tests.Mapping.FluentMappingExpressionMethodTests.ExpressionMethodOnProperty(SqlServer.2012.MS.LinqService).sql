BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(Max)) + CAST([t].[Value] AS NVarChar(Max)) = CAST([t].[Id] AS NVarChar(Max)) + CAST([t].[Value] AS VarChar(11))

