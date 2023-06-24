BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [IsNullOrEmptyTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [IsNullOrEmptyTable]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(1,'   '),
(2,'')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	Length([p].[Value]) = 0

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [IsNullOrEmptyTable]

