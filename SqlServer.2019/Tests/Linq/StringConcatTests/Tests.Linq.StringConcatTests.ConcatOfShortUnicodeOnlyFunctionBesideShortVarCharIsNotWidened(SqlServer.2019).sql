-- SqlServer.2019
SELECT TOP (2)
	Coalesce(IsNull([t].[Unicode], N''), N'') + [t].[Ansi]
FROM
	[ShortUnicodeBesideVarCharRow] [t]

