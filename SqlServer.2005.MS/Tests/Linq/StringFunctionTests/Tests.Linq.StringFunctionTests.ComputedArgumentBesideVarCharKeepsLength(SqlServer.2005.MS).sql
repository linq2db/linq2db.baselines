-- SqlServer.2005.MS SqlServer.2005
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'ЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖЖ'

SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], N'A', @suffix)
FROM
	[StringTypesTable] [t]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

