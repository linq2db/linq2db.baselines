-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ColumnDT VarChar -- AnsiString
SET     @ColumnDT = NULL
DECLARE @ColumnDTO VarChar -- AnsiString
SET     @ColumnDTO = NULL
DECLARE @ColumnTS VarChar(12) -- AnsiString
SET     @ColumnTS = '17:54:55.123'

INSERT INTO [CultureDateTimeTable]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ts VarChar(12) -- AnsiString
SET     @ts = '17:54:55.123'

SELECT
	COUNT(*)
FROM
	[CultureDateTimeTable] [r]
WHERE
	[r].[ColumnTS] = @ts

