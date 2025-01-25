BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @pageNumber Int32
SET     @pageNumber = 9
DECLARE @serialNumber String(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO `Issue3927Table`
(
	`PageNumber`
)
SELECT
	@pageNumber
FROM
	`Issue3927Table` `display`
WHERE
	`display`.`SerialNumber` = @serialNumber

