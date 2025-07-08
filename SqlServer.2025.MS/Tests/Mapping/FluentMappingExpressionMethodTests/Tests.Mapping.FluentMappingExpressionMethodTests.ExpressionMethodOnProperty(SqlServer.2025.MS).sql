BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS NVarChar(11)) = CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS VarChar(11))

