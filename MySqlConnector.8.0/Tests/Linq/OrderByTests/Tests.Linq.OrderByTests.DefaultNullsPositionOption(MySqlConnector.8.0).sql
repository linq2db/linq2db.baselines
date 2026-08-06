-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`Id`
FROM
	`NullsTable` `x`
ORDER BY
	CASE
		WHEN `x`.`Value` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Value`,
	`x`.`Id`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`Id`
FROM
	`NullsTable` `x`
ORDER BY
	CASE
		WHEN `x`.`Value` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Value`,
	`x`.`Id`
LIMIT @take

