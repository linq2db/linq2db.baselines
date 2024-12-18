BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TrimTestTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TrimTestTable]
(
	[ID]   INTEGER      NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[Data] = '***XXX***' AND [TrimTestTable].[Data] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[Data] = @p AND [TrimTestTable].[Data] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TrimTestTable]

