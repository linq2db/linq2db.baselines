-- SQLite.Classic SQLite
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar(33) -- AnsiString
SET     @ColumnDTO = '2020-02-29T17:54:55.123123 +00:40'
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

-- SQLite.Classic SQLite
DECLARE @dto VarChar(33) -- AnsiString
SET     @dto = '2020-02-29T17:54:55.123123 +00:40'

SELECT
	COUNT(*)
FROM
	[Issue4371Table] [r]
WHERE
	[r].[ColumnDTO] = @dto

