-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], N'') AS NVarChar(Max)), N'') || [t].[Ansi]
FROM
	[UnicodeBesideVarCharRow] [t]

-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	Coalesce(CAST(IsNull([t].[Unicode], N'') AS NVarChar(Max)), N'') || [t].[Ansi]
FROM
	[UnicodeBesideVarCharRow] [t]

