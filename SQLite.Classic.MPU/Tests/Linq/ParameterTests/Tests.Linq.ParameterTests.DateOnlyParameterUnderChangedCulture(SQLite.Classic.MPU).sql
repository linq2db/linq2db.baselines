-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ColumnDO VarChar(10) -- AnsiString
SET     @ColumnDO = '2020-02-29'

INSERT INTO [CultureDateOnlyTable]
(
	[ColumnDO]
)
VALUES
(
	@ColumnDO
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @dt VarChar(10) -- AnsiString
SET     @dt = '2020-02-29'

SELECT
	COUNT(*)
FROM
	[CultureDateOnlyTable] [r]
WHERE
	[r].[ColumnDO] = @dt

