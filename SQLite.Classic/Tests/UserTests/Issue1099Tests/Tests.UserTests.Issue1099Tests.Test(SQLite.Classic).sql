BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BackgroundTask]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BackgroundTask]
(
	[ID]               INTEGER     NULL,
	[DurationID]       INTEGER NOT NULL,
	[DurationInterval] INTEGER NOT NULL,
	[PersonID]         INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @DurationID  -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval  -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

INSERT INTO [BackgroundTask]
(
	[ID],
	[DurationID],
	[DurationInterval],
	[PersonID]
)
VALUES
(
	@ID,
	@DurationID,
	@DurationInterval,
	@PersonID
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BackgroundTask]

