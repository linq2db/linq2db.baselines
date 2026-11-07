-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`p`.`Id`
FROM
	`ConcatProduct` `p`
WHERE
	(CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))) IN ('A-100Жук', 'B-200Щит')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	`p`.`Id`
FROM
	`ConcatProduct` `p`
WHERE
	(CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))) IN (`p`.`Title`, 'B-200Жук')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Sku`,
	`t1`.`Title`
FROM
	`ConcatProduct` `t1`

