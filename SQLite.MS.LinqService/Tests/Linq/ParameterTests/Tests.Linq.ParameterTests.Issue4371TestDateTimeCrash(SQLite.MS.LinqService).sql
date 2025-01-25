BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnDT VarChar(23) -- AnsiString
SET     @ColumnDT = '0160-05-06 18:13:59.154'
DECLARE @ColumnDTO VarChar -- AnsiString
SET     @ColumnDTO = NULL
DECLARE @ColumnTS VarChar -- AnsiString
SET     @ColumnTS = NULL

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
-- SQLite.MS SQLite
DECLARE @dt VarChar(23) -- AnsiString
SET     @dt = '0160-05-06 18:13:59.154'

SELECT
	COUNT(*)
FROM
	[Issue4371Table] [r]
WHERE
	[r].[ColumnDT] = @dt

