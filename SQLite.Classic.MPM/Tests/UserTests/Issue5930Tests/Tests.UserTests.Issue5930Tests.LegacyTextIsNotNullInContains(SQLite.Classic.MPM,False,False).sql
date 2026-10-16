-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @legacy NVarChar(255) -- String
SET     @legacy = '9/15/2026 12:00:00 PM +05:45'
DECLARE @current NVarChar(255) -- String
SET     @current = '2026-09-15 12:00:00.000+05:45'

INSERT INTO [OffsetContainsRow] ([Id], [Value], [Marker]) VALUES (1, @legacy, 0), (2, NULL, 0), (3, @current, 0)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	[r].[Value] IS NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Marker  -- Int32
SET     @Marker = 1

UPDATE
	[OffsetContainsRow]
SET
	[Marker] = @Marker
WHERE
	[OffsetContainsRow].[Value] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	[r].[Marker] = 1
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DELETE FROM
	[OffsetContainsRow]
WHERE
	[OffsetContainsRow].[Value] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
ORDER BY
	[r].[Id]

