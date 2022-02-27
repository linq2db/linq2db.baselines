BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1110TB]
(
	[Id]        INTEGER   NOT NULL,
	[TimeStamp] DateTime2 NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1  -- DateTime
SET     @TimeStamp_1 = '2020-02-29 17:54:55.123'

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1110TB]

