-- SqlServer.2019.MS SqlServer.2019

SELECT
	[o_1].[Id],
	[o_1].[StrValue]
FROM
	[SomeEntity] [e]
		CROSS APPLY (
			SELECT TOP (1)
				[o].[Id],
				[o].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [o]
			WHERE
				[o].[Id] = [e].[Id]
		) [o_1]

