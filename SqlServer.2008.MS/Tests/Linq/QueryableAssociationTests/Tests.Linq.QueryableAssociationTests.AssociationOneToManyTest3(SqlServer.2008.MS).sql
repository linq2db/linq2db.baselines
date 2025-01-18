BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[o_1].[StrValue]
FROM
	[SomeEntity] [e]
		CROSS APPLY (
			SELECT TOP (1)
				[o].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [o]
			WHERE
				[o].[Id] = [e].[Id]
		) [o_1]

