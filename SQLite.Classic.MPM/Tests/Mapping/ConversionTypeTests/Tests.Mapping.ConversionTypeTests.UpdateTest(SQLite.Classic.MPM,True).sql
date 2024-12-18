BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TrimTestTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TrimTestTable]
(
	[ID]   INTEGER      NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(1,'***XXX***'),
(2,'***HHH***'),
(3,'***VVV***')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	[TrimTestTable].[Data] = '***XXX***' AND [TrimTestTable].[Data] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = '***HHH***' AND [TrimTestTable].[Data] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TrimTestTable]

