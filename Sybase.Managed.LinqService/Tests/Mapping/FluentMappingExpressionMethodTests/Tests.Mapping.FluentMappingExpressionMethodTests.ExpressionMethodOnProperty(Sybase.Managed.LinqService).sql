BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(5461)) + CAST([t].[Value] AS NVarChar(5461)) = CAST([t].[Id] AS NVarChar(5461)) + CAST([t].[Value] AS VarChar(11))

