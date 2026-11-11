-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	Coalesce(IsNull([t].[Unicode], N''), N'') + [t].[Ansi]
FROM
	[ShortUnicodeBesideVarCharRow] [t]

