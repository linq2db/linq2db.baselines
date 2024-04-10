﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Number Int32
SET     @Number = 1
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_person`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Number Int32
SET     @Number = 2
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_person`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `i1084_student`
(
	`Id`            INT           NOT NULL,
	`Number`        VARCHAR(4000)     NULL,
	`StatusBitmask` INT           NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Number VarChar(1) -- String
SET     @Number = '1'
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_student`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Number VarChar(1) -- String
SET     @Number = '2'
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_student`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`k_1`.`Id`,
	`k_1`.`Number`,
	`k_1`.`StatusBitmask`,
	`k_1`.`StatusBitmask` & 128,
	`g_1`.`StatusBitmask` & 128
FROM
	`i1084_person` `k_1`
		LEFT JOIN `i1084_student` `g_1` ON `k_1`.`Id` = `g_1`.`Id` AND CAST(`k_1`.`Number` AS CHAR(11)) = `g_1`.`Number`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `i1084_person`

