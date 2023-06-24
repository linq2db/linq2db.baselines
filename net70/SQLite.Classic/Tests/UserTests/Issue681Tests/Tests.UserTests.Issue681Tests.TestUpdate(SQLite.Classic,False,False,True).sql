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
DECLARE @Value  -- Int32
SET     @Value = 10
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	[Issue681Table]
SET
	[Value] = @Value
WHERE
	[Issue681Table].[ID] = @ID

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue681Table]

