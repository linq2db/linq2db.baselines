BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `i1084_student`
(
	`Id`            INT          NOT NULL,
	`Number`        VARCHAR(255)     NULL,
	`StatusBitmask` INT          NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`k_1`.`StatusBitmask`,
	`joinedTable`.`StatusBitmask`
FROM
	`i1084_person` `k_1`
		LEFT JOIN `i1084_student` `joinedTable` ON `k_1`.`Id` = `joinedTable`.`Id` AND Cast(`k_1`.`Number` as CHAR(11)) = `joinedTable`.`Number`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

