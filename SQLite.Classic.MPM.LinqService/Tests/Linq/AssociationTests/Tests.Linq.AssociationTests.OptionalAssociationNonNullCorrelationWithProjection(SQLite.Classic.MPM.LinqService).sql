BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table1]
(
	[ID]  INTEGER NOT NULL,
	[ID2] INTEGER     NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table2]
(
	[ID]  INTEGER NOT NULL,
	[ID3] INTEGER     NULL,

	CONSTRAINT [PK_Table2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table3]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_Table3] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table4]
(
	[ID]  INTEGER NOT NULL,
	[ID3] INTEGER     NULL,

	CONSTRAINT [PK_Table4] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	CASE
		WHEN [a_Table2].[ID] IS NOT NULL AND [a_Table3].[ID] IS NOT NULL
			THEN 1
		ELSE 0
	END,
	[a_Table3].[ID]
FROM
	[Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON [r].[ID2] = [a_Table2].[ID]
		LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[a_Table3].[ID] = [id].[ID3] AND [id].[ID] = [r].[ID]
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1]

