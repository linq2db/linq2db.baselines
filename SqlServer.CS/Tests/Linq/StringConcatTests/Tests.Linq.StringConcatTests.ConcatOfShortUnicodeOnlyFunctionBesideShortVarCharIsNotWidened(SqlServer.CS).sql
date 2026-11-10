-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	Coalesce(IsNull([t].[Unicode], N''), N'') || [t].[Ansi]
FROM
	[ShortUnicodeBesideVarCharRow] [t]

