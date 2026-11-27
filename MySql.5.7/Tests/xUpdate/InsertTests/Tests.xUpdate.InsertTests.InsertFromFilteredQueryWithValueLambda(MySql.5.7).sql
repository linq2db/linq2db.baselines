-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

