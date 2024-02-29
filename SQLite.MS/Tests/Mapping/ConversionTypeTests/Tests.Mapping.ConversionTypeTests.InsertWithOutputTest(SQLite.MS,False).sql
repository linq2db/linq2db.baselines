BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TrimTestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TrimTestTable]
(
	[ID]   INTEGER      NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(1,'***OOO***')

BeforeExecute
-- SQLite.MS SQLite

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

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TrimTestTable]

