-- SQLite.MS SQLite
DECLARE @ColumnDO VarChar -- AnsiString
SET     @ColumnDO = '2020-02-29'

INSERT INTO [CultureDateOnlyTable]
(
	[ColumnDO]
)
VALUES
(
	@ColumnDO
)

-- SQLite.MS SQLite
DECLARE @dt VarChar -- AnsiString
SET     @dt = '2020-02-29'

SELECT
	COUNT(*)
FROM
	[CultureDateOnlyTable] [r]
WHERE
	[r].[ColumnDO] = @dt

