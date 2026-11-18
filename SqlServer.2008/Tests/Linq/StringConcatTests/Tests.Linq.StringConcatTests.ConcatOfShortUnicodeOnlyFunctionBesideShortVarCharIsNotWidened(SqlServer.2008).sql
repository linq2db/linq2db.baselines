-- SqlServer.2008
SELECT TOP (2)
	Coalesce(IsNull([t].[Unicode], N''), N'') + [t].[Ansi]
FROM
	[ShortUnicodeBesideVarCharRow] [t]

