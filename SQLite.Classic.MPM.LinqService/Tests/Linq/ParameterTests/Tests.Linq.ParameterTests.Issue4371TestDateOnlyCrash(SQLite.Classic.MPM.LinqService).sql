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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dt VarChar(10) -- AnsiString
SET     @dt = '0160-05-06'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	[r].[ColumnDO] = @dt

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4371Table2]

