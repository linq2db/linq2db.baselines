-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Boolean
SET     @p = 1

SELECT
	[thing_1].[Id]
FROM
	[Thing] [thing_1]
		LEFT JOIN [ThingState] [s] ON [s].[ThingId] = [thing_1].[Id]
WHERE
	CASE
		WHEN [s].[ThingId] IS NOT NULL THEN (
			SELECT
				[t].[ThingId]
			FROM
				[Transition] [t]
					INNER JOIN [ThingState] [s_1] ON [s_1].[ThingId] = [thing_1].[Id]
			WHERE
				[t].[ThingId] = [s_1].[ThingId] AND strftime('%Y-%m-%d %H:%M:%f', [t].[CreatedDate]) = strftime('%Y-%m-%d %H:%M:%f', [s_1].[LastTransitionDate])
		) IS NULL OR CASE
			WHEN (
				SELECT
					[t_1].[TransitionType]
				FROM
					[Transition] [t_1]
						INNER JOIN [ThingState] [s_2] ON [s_2].[ThingId] = [thing_1].[Id]
				WHERE
					[t_1].[ThingId] = [s_2].[ThingId] AND strftime('%Y-%m-%d %H:%M:%f', [t_1].[CreatedDate]) = strftime('%Y-%m-%d %H:%M:%f', [s_2].[LastTransitionDate])
			) = 'Delete'
				THEN 0
			ELSE 1
		END
		ELSE @p
	END

