BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4167Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4167Table`
(
	`ID`        INT           NOT NULL,
	`Value`     VARCHAR(4000)     NULL,
	`EnumValue` INT               NULL,

	CONSTRAINT `PK_Issue4167Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE_1` (`EnumValue`)
AS
(
	SELECT
		CASE
			WHEN `g_1`.`EnumValue` IS NOT NULL THEN `g_1`.`EnumValue`
			ELSE 0
		END
	FROM
		`Issue4167Table` `g_1`
	WHERE
		`g_1`.`Value` = '000001' AND `g_1`.`Value` IS NOT NULL
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4167Table`

