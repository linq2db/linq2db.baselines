-- SQLite.Classic SQLite

INSERT INTO [IgnoreConflictsTable]
(
	[ID],
	[Value]
)
VALUES
(1,'original1'),
(2,'original2')

-- SQLite.Classic SQLite

INSERT OR IGNORE INTO [IgnoreConflictsTable]
(
	[ID],
	[Value]
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[IgnoreConflictsTable] [t1]
ORDER BY
	[t1].[ID]

