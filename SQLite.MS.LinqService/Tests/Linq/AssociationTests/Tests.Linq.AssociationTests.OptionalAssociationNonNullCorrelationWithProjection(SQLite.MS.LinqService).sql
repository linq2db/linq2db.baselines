﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table1]
(
	[ID]  INTEGER NOT NULL,
	[ID2] INTEGER     NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @ID2  -- Int32
SET     @ID2 = 1

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @ID2  -- Int32
SET     @ID2 = 2

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table2]
(
	[ID]  INTEGER NOT NULL,
	[ID3] INTEGER     NULL,

	CONSTRAINT [PK_Table2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @ID3  -- Int32
SET     @ID3 = 1

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table3]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_Table3] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [Table3]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table4]
(
	[ID]  INTEGER NOT NULL,
	[ID3] INTEGER     NULL,

	CONSTRAINT [PK_Table4] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @ID3  -- Int32
SET     @ID3 = 1

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @ID3  -- Int32
SET     @ID3 = NULL

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	[Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON ([r].[ID2] = [a_Table2].[ID] OR [r].[ID2] IS NULL AND [a_Table2].[ID] IS NULL)
		LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3].[ID] IS NULL)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[id].[ID] = [r].[ID] AND [a_Table3].[ID] IS NOT NULL AND
			([a_Table3].[ID] = [id].[ID3])
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table1]

