-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @key VarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	`p`.`Id`
FROM
	`ConcatProduct` `p`
WHERE
	(CONCAT(`p`.`Sku`, `p`.`Title`)) = @key

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

