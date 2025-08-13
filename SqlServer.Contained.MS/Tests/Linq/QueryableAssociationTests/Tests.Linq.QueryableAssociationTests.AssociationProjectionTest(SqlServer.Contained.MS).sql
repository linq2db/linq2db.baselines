BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[StrValue] + N'_B',
	[t1].[StrValue] + N'_C',
	[t1].[Id],
	[t1].[StrValue]
FROM
	[SomeEntity] [e]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Other].[StrValue] + N'_A' as [StrValue],
				[a_Other].[Id]
			FROM
				[SomeOtherEntity] [a_Other]
			WHERE
				[a_Other].[Id] = [e].[Id]
		) [t1]

