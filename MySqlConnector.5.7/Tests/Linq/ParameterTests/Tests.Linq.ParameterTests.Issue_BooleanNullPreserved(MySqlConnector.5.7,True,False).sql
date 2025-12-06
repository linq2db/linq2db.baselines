-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TestBool`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	1
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = NOT `t1`.`Value`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Id` = 1,
	`t1`.`Value` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

