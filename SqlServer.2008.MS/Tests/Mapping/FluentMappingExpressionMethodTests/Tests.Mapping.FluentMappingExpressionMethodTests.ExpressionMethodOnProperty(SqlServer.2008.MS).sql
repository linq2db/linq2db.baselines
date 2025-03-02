BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(Max)) + CAST([t].[Value] AS NVarChar(Max)) = CAST([t].[Id] AS NVarChar(Max)) + CAST([t].[Value] AS VarChar(11))

