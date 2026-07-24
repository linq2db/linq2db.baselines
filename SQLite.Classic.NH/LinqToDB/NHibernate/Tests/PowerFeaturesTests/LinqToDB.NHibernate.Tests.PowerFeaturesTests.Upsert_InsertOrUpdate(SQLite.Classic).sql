-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_orgunits]
WHERE
	[l2dbnh_orgunits].[id] = 900


-- SQLite.Classic SQLite
INSERT INTO [l2dbnh_orgunits] AS [t1]
(
	[id],
	[parentid],
	[name]
)
VALUES
(
	900,
	NULL,
	'First'
)
ON CONFLICT ([id]) DO UPDATE SET
	[name] = 'Updated'


-- SQLite.Classic SQLite
SELECT
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900
LIMIT 2


-- SQLite.Classic SQLite
INSERT INTO [l2dbnh_orgunits] AS [t1]
(
	[id],
	[parentid],
	[name]
)
VALUES
(
	900,
	NULL,
	'Second'
)
ON CONFLICT ([id]) DO UPDATE SET
	[name] = 'Updated'


-- SQLite.Classic SQLite
SELECT
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900
LIMIT 2


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_orgunits]
WHERE
	[l2dbnh_orgunits].[id] = 900


