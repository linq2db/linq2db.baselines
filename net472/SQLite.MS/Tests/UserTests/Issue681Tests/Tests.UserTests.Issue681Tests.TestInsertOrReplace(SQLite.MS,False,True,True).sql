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
DECLARE @Value  -- Int32
SET     @Value = 10
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
SET     @Value = 10
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

DROP TABLE IF EXISTS [Issue681Table]

