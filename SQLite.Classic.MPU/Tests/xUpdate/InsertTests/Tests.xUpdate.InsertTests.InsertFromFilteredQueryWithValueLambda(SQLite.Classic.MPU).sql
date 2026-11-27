-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @pageNumber Integer -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO [SerialNumberPageTable]
(
	[PageNumber]
)
SELECT
	@pageNumber
FROM
	[SerialNumberPageTable] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

