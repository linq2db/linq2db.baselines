BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `i1084_student`
(
	`Id`            INT          NOT NULL,
	`Number`        VARCHAR(255)     NULL,
	`StatusBitmask` INT          NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `i1084_student`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `i1084_person`

