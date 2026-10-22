-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @arr Int32
SET     @arr = 3

INSERT INTO `ArrayLengthTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	@arr
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`ArrayLengthTable` `t1`
LIMIT 2

