BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar -- AnsiString
SET     @ColumnDTO = NULL
DECLARE @ColumnTS VarChar(12) -- AnsiString
SET     @ColumnTS = '17:54:55.123'

INSERT INTO [Issue4371Table]
(
	[ColumnDT],
	[ColumnDTO],
	[ColumnTS]
)
VALUES
(
	@ColumnDT,
	@ColumnDTO,
	@ColumnTS
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ts VarChar(12) -- AnsiString
SET     @ts = '17:54:55.123'

SELECT
	COUNT(*)
FROM
	[Issue4371Table] [r]
WHERE
	[r].[ColumnTS] = @ts

