﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1303]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1303]
(
	[ID]     INTEGER       NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Array Binary(3)
SET     @Array = X'010203'
DECLARE @Binary Binary(2)
SET     @Binary = X'0405'

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Array Binary(3)
SET     @Array = X'010203'

SELECT
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	([_].[Array] = @Array)
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Binary Binary(2)
SET     @Binary = X'0405'

SELECT
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	([_].[Binary] = @Binary)
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1303]

