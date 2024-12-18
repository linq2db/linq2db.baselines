BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4371Table2]
(
	[ColumnDO] VarChar     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ColumnDO VarChar(10) -- AnsiString
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dt VarChar(10) -- AnsiString
SET     @dt = '2020-02-29'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	[r].[ColumnDO] = @dt AND [r].[ColumnDO] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

