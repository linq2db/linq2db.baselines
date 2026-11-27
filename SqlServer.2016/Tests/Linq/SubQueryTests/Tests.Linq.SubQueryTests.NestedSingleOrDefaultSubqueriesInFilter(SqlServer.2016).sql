-- SqlServer.2016
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT
	[thing].[Id]
FROM
	[NestedFilterThing] [thing]
		LEFT JOIN [NestedFilterState] [s] ON [s].[ThingId] = [thing].[Id]
		OUTER APPLY (
			SELECT
				[t].[ThingId],
				[t].[TransitionType]
			FROM
				[NestedFilterTransition] [t]
					INNER JOIN [NestedFilterState] [s_1] ON [s_1].[ThingId] = [thing].[Id]
			WHERE
				[t].[ThingId] = [s_1].[ThingId] AND [t].[CreatedDate] = [s_1].[LastTransitionDate]
		) [t1]
WHERE
	IIF([s].[ThingId] IS NOT NULL, IIF([t1].[ThingId] IS NULL OR [t1].[TransitionType] <> N'Delete' OR [t1].[TransitionType] IS NULL, 1, 0), @p) = 1

