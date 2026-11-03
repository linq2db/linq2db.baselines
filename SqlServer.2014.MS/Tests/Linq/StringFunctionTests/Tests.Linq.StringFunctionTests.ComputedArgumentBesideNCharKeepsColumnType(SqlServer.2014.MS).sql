-- SqlServer.2014.MS SqlServer.2014
DECLARE @suffix NChar(3) -- StringFixedLength
SET     @suffix = N'Жук'

SELECT
	[t].[Id],
	RTRIM(Replace([t].[NCharColumn], N'A', @suffix))
FROM
	[StringTypesTable] [t]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

