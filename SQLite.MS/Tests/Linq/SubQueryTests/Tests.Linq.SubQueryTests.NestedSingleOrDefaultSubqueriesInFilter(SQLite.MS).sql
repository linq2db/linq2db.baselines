-- SQLite.MS SQLite
DECLARE @p Integer -- Boolean
SET     @p = 1

SELECT
	[thing].[Id]
FROM
	[NestedFilterThing] [thing]
		LEFT JOIN [NestedFilterState] [s] ON [s].[ThingId] = [thing].[Id]
WHERE
	CASE
		WHEN [s].[ThingId] IS NOT NULL THEN (
			SELECT
				[t].[ThingId]
			FROM
				[NestedFilterTransition] [t]
					INNER JOIN [NestedFilterState] [s_1] ON [s_1].[ThingId] = [thing].[Id]
			WHERE
				[t].[ThingId] = [s_1].[ThingId] AND strftime('%Y-%m-%d %H:%M:%f', [t].[CreatedDate]) = strftime('%Y-%m-%d %H:%M:%f', [s_1].[LastTransitionDate])
		) IS NULL OR CASE
			WHEN (
				SELECT
					[t_1].[TransitionType]
				FROM
					[NestedFilterTransition] [t_1]
						INNER JOIN [NestedFilterState] [s_2] ON [s_2].[ThingId] = [thing].[Id]
				WHERE
					[t_1].[ThingId] = [s_2].[ThingId] AND strftime('%Y-%m-%d %H:%M:%f', [t_1].[CreatedDate]) = strftime('%Y-%m-%d %H:%M:%f', [s_2].[LastTransitionDate])
			) = 'Delete'
				THEN 0
			ELSE 1
		END
		ELSE @p
	END

