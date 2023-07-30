BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `i1084_student`
(
	`Id`            INT           NOT NULL,
	`Number`        VARCHAR(4000)     NULL,
	`StatusBitmask` INT           NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`k_1`.`StatusBitmask`,
	`joinedTable`.`StatusBitmask`
FROM
	`i1084_person` `k_1`
		LEFT JOIN `i1084_student` `joinedTable` ON `k_1`.`Id` = `joinedTable`.`Id` AND Cast(`k_1`.`Number` as CHAR(11)) = `joinedTable`.`Number`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

