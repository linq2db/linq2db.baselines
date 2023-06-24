BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table4]
(
	[ID]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [main].[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 123
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	[main].[Issue681Table]
SET
	[Value] = @Value
WHERE
	[main].[Issue681Table].[ID] = @ID

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[main].[Issue681Table] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[main].[Issue681Table]
WHERE
	[main].[Issue681Table].[ID] = @ID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 123
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	[main].[Issue681Table]
SET
	[Value] = @Value
WHERE
	[main].[Issue681Table].[ID] = @ID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 123

INSERT INTO [main].[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [main].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [main].[Issue681Table2]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [main].[Issue681Table2]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TABLE [main].[Issue681Table3]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue681Table3] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE [main].[Issue681Table3]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table]

