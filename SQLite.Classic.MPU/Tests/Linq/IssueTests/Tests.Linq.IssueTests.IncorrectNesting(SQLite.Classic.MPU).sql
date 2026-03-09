-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Boolean
SET     @p = 1

SELECT
	[thing_1].[Id]
FROM
	[Thing] [thing_1]
		LEFT JOIN [ThingState] [s] ON [s].[ThingId] = [thing_1].[Id]
		LEFT JOIN ([Transition] [t]
			INNER JOIN [ThingState] [s_1] ON 1=1)
		ON [s_1].[ThingId] = [thing_1].[Id] AND [t].[ThingId] = [s_1].[ThingId] AND strftime('%Y-%m-%d %H:%M:%f', [t].[CreatedDate]) = strftime('%Y-%m-%d %H:%M:%f', [s_1].[LastTransitionDate])
WHERE
	CASE
		WHEN [s].[ThingId] IS NOT NULL THEN [t].[ThingId] IS NULL OR [t].[TransitionType] <> 'Delete' OR [t].[TransitionType] IS NULL
		ELSE @p
	END

