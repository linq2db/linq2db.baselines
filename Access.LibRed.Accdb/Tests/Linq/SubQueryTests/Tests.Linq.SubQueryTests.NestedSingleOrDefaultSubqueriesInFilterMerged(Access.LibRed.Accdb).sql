-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[thing].[Id]
FROM
	([NestedFilterThing] [thing]
		LEFT JOIN [NestedFilterState] [s] ON ([s].[ThingId] = [thing].[Id]))
		OUTER APPLY (
			SELECT
				[t].[ThingId],
				[t].[TransitionType]
			FROM
				[NestedFilterTransition] [t]
					INNER JOIN [NestedFilterState] [s_1] ON ([s_1].[ThingId] = [thing].[Id])
			WHERE
				[t].[ThingId] = [s_1].[ThingId] AND [t].[CreatedDate] = [s_1].[LastTransitionDate]
		) [t1]
WHERE
	CASE
		WHEN [s].[ThingId] IS NOT NULL THEN [t1].[ThingId] IS NULL OR [t1].[TransitionType] <> 'Delete' OR [t1].[TransitionType] IS NULL
		ELSE True
	END

