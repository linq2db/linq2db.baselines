-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [BulkCopyIgnoreConflictsTable]
(
	[ID],
	[Value]
)
VALUES
(1,'original1'),
(2,'original2')

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT OR IGNORE INTO [BulkCopyIgnoreConflictsTable]
(
	[ID],
	[Value]
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[BulkCopyIgnoreConflictsTable] [t1]
ORDER BY
	[t1].[ID]

