BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue464]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue464]
(
	[Id],
	[Value]
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue464] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue464]

