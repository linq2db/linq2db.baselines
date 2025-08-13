BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[o_1].[Id],
	[o_1].[StrValue],
	[e].[Id]
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

