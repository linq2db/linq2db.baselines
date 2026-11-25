-- SqlServer.2016
DECLARE @PageNumber Int -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = N'12345678901'

INSERT INTO [SerialNumberPageTable]
(
	[PageNumber]
)
SELECT
	@PageNumber
FROM
	[SerialNumberPageTable] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

