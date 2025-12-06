-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
SELECT
	[t1].[ID] + 1,
	'***HHH***'
FROM
	[TrimTestTable] [t1]
RETURNING
	[TrimTestTable].[ID],
	[TrimTestTable].[Data]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

