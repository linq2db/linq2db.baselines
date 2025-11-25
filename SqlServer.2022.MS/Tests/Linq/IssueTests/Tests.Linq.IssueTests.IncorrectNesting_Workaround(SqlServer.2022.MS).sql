-- SqlServer.2022.MS SqlServer.2022

SELECT
	[thing_1].[Id]
FROM
	[Thing] [thing_1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[ThingState] [transition_1]
				INNER JOIN [Transition] [t] ON [t].[ThingId] = [transition_1].[ThingId] AND [t].[CreatedDate] = [transition_1].[LastTransitionDate]
		WHERE
			[transition_1].[ThingId] = [thing_1].[Id] AND [t].[TransitionType] = N'Delete'
	)

