-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
INSERT INTO `ShiftedDateRow`
(
	`Id`,
	`Plain`,
	`Date`
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Plain`,
	`t1`.`Date`
FROM
	`ShiftedDateRow` `t1`
LIMIT 2

