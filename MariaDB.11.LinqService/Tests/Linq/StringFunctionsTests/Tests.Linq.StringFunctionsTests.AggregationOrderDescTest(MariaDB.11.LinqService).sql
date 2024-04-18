﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`     INT         NOT NULL,
	`Value1` VARCHAR(50)     NULL,
	`Value2` VARCHAR(50)     NULL,
	`Value3` VARCHAR(50)     NULL,
	`Value4` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 VarChar(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 VarChar -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- String
SET     @Value4 = 'V4'

INSERT INTO `SampleClass`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 VarChar -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 VarChar -- String
SET     @Value4 = NULL

INSERT INTO `SampleClass`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Value3 VarChar -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- String
SET     @Value4 = 'Z4'

INSERT INTO `SampleClass`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Max(`t1`.`Value1`),
	GROUP_CONCAT(`t1`.`Value1` ORDER BY `t1`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`
GROUP BY
	`t1`.`Id`,
	`t1`.`Value1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

