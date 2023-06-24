BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table4]
(
	[ID]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[main].[Issue681Table] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[main].[Issue681Table]
WHERE
	[main].[Issue681Table].[ID] = @ID

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [main].[Issue681Table2]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [main].[Issue681Table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table]

