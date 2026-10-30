-- SqlServer.2017.MS SqlServer.2017
DECLARE @suffix NVarChar(4000) -- String
SET     @suffix = N'Жук'

SELECT
	[t].[Id],
	RTRIM(Replace([t].[CharColumn], N'A', @suffix)),
	RTRIM(Replace([t].[CharColumn], N'A', N'Ж'))
FROM
	[StringTypesTable] [t]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

