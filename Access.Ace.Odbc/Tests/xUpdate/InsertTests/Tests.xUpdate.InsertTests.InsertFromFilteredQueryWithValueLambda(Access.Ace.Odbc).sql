-- Access.Ace.Odbc AccessODBC
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO [SerialNumberPageTable]
(
	[PageNumber]
)
SELECT
	?
FROM
	[SerialNumberPageTable] [display]
WHERE
	[display].[SerialNumber] = ?

