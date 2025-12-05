-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t2].[Id],
	[t2].[OwnerStr],
	[t1].[cond],
	[t1].[StrValue],
	[a_OtherMapped].[Id],
	[a_OtherMapped].[StrValue]
FROM
	[SomeEntity] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Other].[Id] as [cond],
				[a_Other].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [a_Other]
			WHERE
				[a_Other].[Id] = [t2].[Id]
		) [t1]
		LEFT JOIN [SomeOtherEntity] [a_OtherMapped] WITH (NOLOCK) ON [a_OtherMapped].[Id] = [t2].[Id]

