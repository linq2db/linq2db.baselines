-- SqlCe
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber NVarChar(11) -- String
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

