-- SqlServer.2012

SELECT
	[o_1].[Id],
	[o_1].[StrValue]
FROM
	[SomeEntity] [e]
		CROSS APPLY (
			SELECT TOP (1)
				[o].[Id],
				Coalesce([o].[StrValue], N'') + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [o]
			WHERE
				[o].[Id] = [e].[Id]
		) [o_1]

