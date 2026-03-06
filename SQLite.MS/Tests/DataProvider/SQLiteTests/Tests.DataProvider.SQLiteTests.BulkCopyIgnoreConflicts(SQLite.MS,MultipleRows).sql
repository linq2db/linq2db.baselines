-- SQLite.MS SQLite

INSERT INTO [BulkCopyIgnoreConflictsTable]
(
	[ID],
	[Value]
)
VALUES
(1,'original1'),
(2,'original2')

-- SQLite.MS SQLite

INSERT OR IGNORE INTO [BulkCopyIgnoreConflictsTable]
(
	[ID],
	[Value]
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[BulkCopyIgnoreConflictsTable] [t1]
ORDER BY
	[t1].[ID]

