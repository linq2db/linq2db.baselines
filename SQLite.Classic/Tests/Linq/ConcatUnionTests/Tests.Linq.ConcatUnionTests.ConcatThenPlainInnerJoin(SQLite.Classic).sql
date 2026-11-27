-- SQLite.Classic SQLite
SELECT
	[itm_3].[ItemId]
FROM
	(
		SELECT
			[itm_1].[EntityId],
			[itm_1].[ItemId]
		FROM
			[ConcatJoinThing] [itm],
			[ConcatJoinItem] [itm_1]
		WHERE
			[itm_1].[ItemId] = [itm].[ItemId]
		UNION ALL
		SELECT
			[itm_2].[EntityId],
			[itm_2].[ItemId]
		FROM
			[ConcatJoinThing] [t],
			[ConcatJoinItem] [itm_2]
		WHERE
			[itm_2].[AltItemId] = [t].[ItemId]
	) [itm_3]
		INNER JOIN [ConcatJoinEntity] [entity] ON [itm_3].[EntityId] = [entity].[EntityId]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[ItemId]
FROM
	[ConcatJoinThing] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[ItemId],
	[t1].[AltItemId],
	[t1].[ItemNumber],
	[t1].[EntityId]
FROM
	[ConcatJoinItem] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[EntityId],
	[t1].[Applicable]
FROM
	[ConcatJoinEntity] [t1]

-- SQLite.Classic SQLite
SELECT
	[itm_3].[ItemId]
FROM
	(
		SELECT
			[itm_1].[EntityId],
			[itm_1].[ItemId]
		FROM
			[ConcatJoinThing] [itm],
			[ConcatJoinItem] [itm_1]
		WHERE
			[itm_1].[ItemId] = [itm].[ItemId]
		UNION ALL
		SELECT
			[itm_2].[EntityId],
			[itm_2].[ItemId]
		FROM
			[ConcatJoinThing] [t],
			[ConcatJoinItem] [itm_2]
		WHERE
			[itm_2].[AltItemId] = [t].[ItemId]
	) [itm_3]
		INNER JOIN [ConcatJoinEntity] [entity] ON [itm_3].[EntityId] = [entity].[EntityId]

