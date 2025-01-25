BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1107TB]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1107TB]
(
	[Id]       INTEGER   NOT NULL,
	[TestDate] DateTime2 NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue1107TB]
(
	[Id],
	[TestDate]
)
VALUES
(0,'2018-01-01 00:00:00.000')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1107TB]

