BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4371Table2]
(
	[ColumnDO] VarChar     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ColumnDO VarChar(10) -- AnsiString
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @dt VarChar(10) -- AnsiString
SET     @dt = '0160-05-06'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	Date([r].[ColumnDO]) = Date(@dt)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

