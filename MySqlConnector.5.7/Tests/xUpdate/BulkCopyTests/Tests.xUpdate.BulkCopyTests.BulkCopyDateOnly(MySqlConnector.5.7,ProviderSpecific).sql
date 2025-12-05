INSERT BULK `DateOnlyTable`(Date)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

