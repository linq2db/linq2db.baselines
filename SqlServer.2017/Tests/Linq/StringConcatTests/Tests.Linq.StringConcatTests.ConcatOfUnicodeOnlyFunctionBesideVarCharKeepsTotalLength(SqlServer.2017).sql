-- SqlServer.2017
SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], N'') AS NVarChar(Max)), N'') + [t].[Ansi]
FROM
	[UnicodeBesideVarCharRow] [t]

-- SqlServer.2017
SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], N'') AS NVarChar(Max)), N'') + [t].[Ansi]
FROM
	[UnicodeBesideVarCharRow] [t]

