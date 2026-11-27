-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @PageNumber Int32
SET     @PageNumber = 9
DECLARE @serialNumber String(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO `SerialNumberPageTable`
(
	`PageNumber`
)
SELECT
	@PageNumber
FROM
	`SerialNumberPageTable` `display`
WHERE
	`display`.`SerialNumber` = @serialNumber

