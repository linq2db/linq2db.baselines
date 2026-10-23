-- SQLite.Classic SQLite
SELECT
	[t1].[ItemId]
FROM
	(
		SELECT
			[itm_1].[EntityId],
			[itm_1].[ItemId]
		FROM
			[Thing] [itm],
			[Item] [itm_1]
		WHERE
			[itm_1].[ItemId] = [itm].[ItemId]
		UNION ALL
		SELECT
			[itm_2].[EntityId],
			[itm_2].[ItemId]
		FROM
			[Thing] [t],
			[Item] [itm_2]
		WHERE
			[itm_2].[AltItemId] = [t].[ItemId]
	) [t1]
		INNER JOIN [Entity] [applicable] ON [t1].[EntityId] = [applicable].[EntityId]
WHERE
	[applicable].[Applicable]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[ItemId]
FROM
	[Thing] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[ItemId],
	[t1].[AltItemId],
	[t1].[ItemNumber],
	[t1].[EntityId]
FROM
	[Item] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[EntityId],
	[t1].[Applicable]
FROM
	[Entity] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[ItemId]
FROM
	(
		SELECT
			[itm_1].[EntityId],
			[itm_1].[ItemId]
		FROM
			[Thing] [itm],
			[Item] [itm_1]
		WHERE
			[itm_1].[ItemId] = [itm].[ItemId]
		UNION ALL
		SELECT
			[itm_2].[EntityId],
			[itm_2].[ItemId]
		FROM
			[Thing] [t],
			[Item] [itm_2]
		WHERE
			[itm_2].[AltItemId] = [t].[ItemId]
	) [t1]
		INNER JOIN [Entity] [applicable] ON [t1].[EntityId] = [applicable].[EntityId]
WHERE
	[applicable].[Applicable]

