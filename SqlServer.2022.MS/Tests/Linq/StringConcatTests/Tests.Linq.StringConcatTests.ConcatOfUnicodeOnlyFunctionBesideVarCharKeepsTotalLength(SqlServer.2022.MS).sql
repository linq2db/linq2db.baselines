-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], N'') AS NVarChar(Max)), N'') + [t].[Ansi]
FROM
	[UnicodeBesideVarCharRow] [t]

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], N'') AS NVarChar(Max)), N'') + [t].[Ansi]
FROM
	[UnicodeBesideVarCharRow] [t]

