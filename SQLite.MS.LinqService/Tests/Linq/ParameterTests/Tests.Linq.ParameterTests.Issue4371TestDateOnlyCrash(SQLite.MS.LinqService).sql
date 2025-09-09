BeforeExecute
-- SQLite.MS SQLite (asynchronously)
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
-- SQLite.MS SQLite (asynchronously)
DECLARE @dt VarChar -- AnsiString
SET     @dt = '0160-05-06'

SELECT
	COUNT(*)
FROM
	[Issue4371Table2] [r]
WHERE
	[r].[ColumnDO] = @dt

