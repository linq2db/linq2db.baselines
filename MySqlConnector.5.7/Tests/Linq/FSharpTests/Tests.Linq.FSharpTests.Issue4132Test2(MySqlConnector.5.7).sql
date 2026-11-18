-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
INSERT INTO `Issue4132Table`
(
	`Id`,
	`Number`,
	`Text`
)
VALUES
(
	1,
	1,
	'before'
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
UPDATE
	`Issue4132Table` `row_1`
SET
	`row_1`.`Text` = 'updated recently'
WHERE
	`row_1`.`Number` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	`r`.`Number`,
	`r`.`Text`
FROM
	`Issue4132Table` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

