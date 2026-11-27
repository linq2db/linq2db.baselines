-- SQLite.MS SQLite
SELECT
	[thing].[Id]
FROM
	[NestedFilterThing] [thing]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[NestedFilterState] [transition]
				INNER JOIN [NestedFilterTransition] [t] ON [t].[ThingId] = [transition].[ThingId] AND strftime('%Y-%m-%d %H:%M:%f', [t].[CreatedDate]) = strftime('%Y-%m-%d %H:%M:%f', [transition].[LastTransitionDate])
		WHERE
			[transition].[ThingId] = [thing].[Id] AND [t].[TransitionType] = 'Delete'
	)

