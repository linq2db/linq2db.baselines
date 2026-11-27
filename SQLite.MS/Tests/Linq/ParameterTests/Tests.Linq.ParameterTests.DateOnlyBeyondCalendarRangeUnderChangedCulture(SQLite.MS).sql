-- SQLite.MS SQLite
DECLARE @ColumnDO VarChar -- AnsiString
SET     @ColumnDO = '0160-05-06'

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
SET     @dt = '0160-05-06'

SELECT
	COUNT(*)
FROM
	[CultureDateOnlyTable] [r]
WHERE
	[r].[ColumnDO] = @dt

