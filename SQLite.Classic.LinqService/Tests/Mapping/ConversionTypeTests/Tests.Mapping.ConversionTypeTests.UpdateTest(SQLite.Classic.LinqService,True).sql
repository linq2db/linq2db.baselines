BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	[TrimTestTable].[Data] = '***XXX***'

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = '***HHH***'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

