-- SqlServer.2008

SELECT
	Coalesce([t1].[StrValue], N'') + N'_B',
	Coalesce([t1].[StrValue], N'') + N'_C',
	[t1].[Id],
	[t1].[StrValue]
FROM
	[SomeEntity] [e]
		OUTER APPLY (
			SELECT TOP (1)
				Coalesce([a_Other].[StrValue], N'') + N'_A' as [StrValue],
				[a_Other].[Id]
			FROM
				[SomeOtherEntity] [a_Other]
			WHERE
				[a_Other].[Id] = [e].[Id]
		) [t1]

