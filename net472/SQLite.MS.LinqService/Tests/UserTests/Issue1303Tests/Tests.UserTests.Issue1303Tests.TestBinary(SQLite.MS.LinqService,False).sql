BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1303]
(
	[ID]     INTEGER       NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Array_1 Binary(3)
SET     @Array_1 = X'010203'
DECLARE @Binary_1 Binary(2)
SET     @Binary_1 = X'0405'

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	@Array_1,
	@Binary_1
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Array_2 Binary(3)
SET     @Array_2 = X'010203'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = @Array_2
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Binary_2 Binary(2)
SET     @Binary_2 = X'0405'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = @Binary_2
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1303]

