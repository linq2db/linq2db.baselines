﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4167Table`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4167Table`
(
	`ID`        INT           NOT NULL,
	`Value`     VARCHAR(4000)     NULL,
	`EnumValue` INT               NULL,

	CONSTRAINT `PK_Issue4167Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Issue4167Table`
(
	`ID`,
	`Value`,
	`EnumValue`
)
VALUES
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @default Int32
SET     @default = 0

WITH `CTE_1` (`EnumValue`)
AS
(
	SELECT
		Coalesce(`g_1`.`EnumValue`, @default)
	FROM
		`Issue4167Table` `g_1`
	WHERE
		`g_1`.`Value` = '000001'
	GROUP BY
		`g_1`.`Value`,
		`g_1`.`EnumValue`
)
SELECT
	`t1`.`EnumValue`
FROM
	`CTE_1` `t1`
ORDER BY
	`t1`.`EnumValue`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4167Table`

