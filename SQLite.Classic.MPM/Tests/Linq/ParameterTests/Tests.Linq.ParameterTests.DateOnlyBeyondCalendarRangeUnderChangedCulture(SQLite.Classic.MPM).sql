-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ColumnDO VarChar(10) -- AnsiString
SET     @ColumnDO = '0160-05-06'

INSERT INTO [CultureDateOnlyTable]
(
	[ColumnDO]
)
VALUES
(
	@ColumnDO
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dt VarChar(10) -- AnsiString
SET     @dt = '0160-05-06'

SELECT
	COUNT(*)
FROM
	[CultureDateOnlyTable] [r]
WHERE
	[r].[ColumnDO] = @dt

