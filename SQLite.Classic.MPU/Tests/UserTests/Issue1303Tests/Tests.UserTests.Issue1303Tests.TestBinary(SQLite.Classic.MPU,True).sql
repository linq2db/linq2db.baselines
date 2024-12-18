BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1303]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1303]
(
	[ID]     INTEGER       NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	X'010203',
	X'0405'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = X'010203' AND [t1].[Array] IS NOT NULL
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = X'0405' AND [t1].[Binary] IS NOT NULL
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1303]

