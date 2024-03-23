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
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table] AS [t1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)
ON CONFLICT ([ID]) DO UPDATE SET
	[Value] = @Value

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table] AS [t1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)
ON CONFLICT ([ID]) DO UPDATE SET
	[Value] = @Value

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table]

