-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	Coalesce(IsNull([t].[Unicode], N''), N'') + [t].[Ansi]
FROM
	[ShortUnicodeBesideVarCharRow] [t]

