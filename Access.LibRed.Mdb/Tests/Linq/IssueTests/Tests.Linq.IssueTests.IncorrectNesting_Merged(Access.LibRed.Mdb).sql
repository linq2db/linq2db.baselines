-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[thing_1].[Id]
FROM
	([Thing] [thing_1]
		LEFT JOIN [ThingState] [s] ON ([s].[ThingId] = [thing_1].[Id]))
		OUTER APPLY (
			SELECT
				[t].[ThingId],
				[t].[TransitionType]
			FROM
				[Transition] [t]
					INNER JOIN [ThingState] [s_1] ON ([s_1].[ThingId] = [thing_1].[Id])
			WHERE
				[t].[ThingId] = [s_1].[ThingId] AND [t].[CreatedDate] = [s_1].[LastTransitionDate]
		) [t1]
WHERE
	CASE
		WHEN [s].[ThingId] IS NOT NULL THEN [t1].[ThingId] IS NULL OR [t1].[TransitionType] <> 'Delete' OR [t1].[TransitionType] IS NULL
		ELSE True
	END

