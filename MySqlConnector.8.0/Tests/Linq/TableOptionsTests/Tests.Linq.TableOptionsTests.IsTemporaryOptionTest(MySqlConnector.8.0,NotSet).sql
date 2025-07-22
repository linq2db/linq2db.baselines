BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `temp_table1`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(1,2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `temp_table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table1` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table2` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(2,3)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

BeforeExecute
INSERT BULK `temp_table1`(ID, Value)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

TRUNCATE TABLE `temp_table1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

TRUNCATE TABLE `temp_table2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `temp_table2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `temp_table1`

