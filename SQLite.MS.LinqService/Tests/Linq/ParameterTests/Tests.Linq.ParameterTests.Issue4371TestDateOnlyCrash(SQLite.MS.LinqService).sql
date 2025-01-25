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
SET     @ColumnDO = '0160-05-06'

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
SET     @dt = '0160-05-06'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	Date([r].[ColumnDO]) = Date(@dt)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

