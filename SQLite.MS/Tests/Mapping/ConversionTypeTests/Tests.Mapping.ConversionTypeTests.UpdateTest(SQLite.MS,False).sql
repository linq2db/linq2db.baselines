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
(1,'***XXX***'),
(2,'***HHH***'),
(3,'***VVV***')

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID  -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[ID] = @ID

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	([TrimTestTable].[Data] = '***XXX***')

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = @p

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

