BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1110TB]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1110TB]
(
	[Id]        INTEGER   NOT NULL,
	[TimeStamp] DateTime2 NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @TimeStamp  -- DateTime
SET     @TimeStamp = '2020-02-29 17:54:55.123'

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1110TB]

