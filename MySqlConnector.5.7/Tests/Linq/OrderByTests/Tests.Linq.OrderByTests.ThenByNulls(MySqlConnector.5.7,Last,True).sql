-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`
ORDER BY
	`t1`.`Grp`,
	`t1`.`Value` DESC,
	`t1`.`Id`
LIMIT @take

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`

