-- SqlServer.2025 SqlServer.2022
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT
	[thing_1].[Id]
FROM
	[Thing] [thing_1]
		LEFT JOIN [ThingState] [s] ON [s].[ThingId] = [thing_1].[Id]
		OUTER APPLY (
			SELECT
				[t].[ThingId] as [cond],
				[t].[TransitionType]
			FROM
				[Transition] [t]
					INNER JOIN [ThingState] [s_1] ON [s_1].[ThingId] = [thing_1].[Id]
			WHERE
				[t].[ThingId] = [s_1].[ThingId] AND [t].[CreatedDate] = [s_1].[LastTransitionDate]
		) [t1]
WHERE
	IIF([s].[ThingId] IS NOT NULL, IIF([t1].[cond] IS NULL OR [t1].[TransitionType] <> N'Delete' OR [t1].[TransitionType] IS NULL, 1, 0), @p) = 1

