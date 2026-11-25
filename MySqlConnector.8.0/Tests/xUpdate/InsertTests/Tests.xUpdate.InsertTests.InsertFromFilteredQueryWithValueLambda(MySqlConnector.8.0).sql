-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @pageNumber Int32
SET     @pageNumber = 9
DECLARE @serialNumber String(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO `SerialNumberPageTable`
(
	`PageNumber`
)
SELECT
	@pageNumber
FROM
	`SerialNumberPageTable` `display`
WHERE
	`display`.`SerialNumber` = @serialNumber

