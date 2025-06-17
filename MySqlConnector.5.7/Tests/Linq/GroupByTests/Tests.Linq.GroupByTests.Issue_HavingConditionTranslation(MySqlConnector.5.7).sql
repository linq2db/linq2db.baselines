BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`MiddleName`
HAVING
	`t1`.`MiddleName` IS NULL OR `t1`.`MiddleName` <> 'Unknown'

