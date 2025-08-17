BeforeExecute
-- SQLite.MS SQLite (asynchronously)
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
-- SQLite.MS SQLite (asynchronously)
DECLARE @dt VarChar -- AnsiString
SET     @dt = '2020-02-29'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	[r].[ColumnDO] = @dt

