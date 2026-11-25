-- SqlServer.2016
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = N'12345678901'

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

