BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4371Table2]
(
	[ColumnDO] VarChar     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnDO VarChar -- AnsiString
SET     @ColumnDO = '2020-02-29'

INSERT INTO [Issue4371Table2]
(
	[ColumnDO]
)
VALUES
(
	@ColumnDO
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @dt VarChar -- AnsiString
SET     @dt = '2020-02-29'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	Date([r].[ColumnDO]) = Date(@dt)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

