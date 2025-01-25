BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`MiddleName`
HAVING
	`t1`.`MiddleName` IS NULL OR `t1`.`MiddleName` <> 'Unknown' OR
	`t1`.`MiddleName` IS NULL

