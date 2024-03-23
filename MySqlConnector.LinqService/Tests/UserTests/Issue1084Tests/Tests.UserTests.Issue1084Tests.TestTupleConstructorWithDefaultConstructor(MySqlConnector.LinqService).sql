BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `i1084_student`
(
	`Id`            INT           NOT NULL,
	`Number`        VARCHAR(4000)     NULL,
	`StatusBitmask` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`StatusBitmask` & 128,
	`g_1`.`StatusBitmask` & 128
FROM
	`i1084_person` `t1`
		LEFT JOIN `i1084_student` `g_1` ON `t1`.`Id` = `g_1`.`Id` AND Cast(`t1`.`Number` as CHAR(255)) = `g_1`.`Number`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

