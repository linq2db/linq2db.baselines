-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE IF NOT EXISTS `temp_table1`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(1,2)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE IF NOT EXISTS `temp_table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `temp_table2`
(
	`ID`,
	`Value`
)
SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table1` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table1` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table2` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(2,3)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Value Int32
SET     @Value = 3

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)

INSERT ASYNC BULK `temp_table1`(ID, Value)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

TRUNCATE TABLE `temp_table1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

TRUNCATE TABLE `temp_table2`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `temp_table2`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `temp_table1`

