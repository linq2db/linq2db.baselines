BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

