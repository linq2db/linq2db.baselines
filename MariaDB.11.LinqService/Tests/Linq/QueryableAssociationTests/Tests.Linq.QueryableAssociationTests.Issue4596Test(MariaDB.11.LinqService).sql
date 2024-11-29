BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4596Form`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4596Form`
(
	`Id` INT  NOT NULL,
	`C1` CHAR NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4596Item`
(
	`Id`         INT           NOT NULL,
	`FormId`     INT           NOT NULL,
	`OrderIndex` INT           NOT NULL,
	`Name1`      VARCHAR(4000)     NULL,
	`Name2`      VARCHAR(4000)     NULL,
	`Name3`      VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`Id`,
	`m_1`.`c1`,
	`m_1`.`c2`,
	`d`.`Id`,
	`d`.`FormId`,
	`d`.`OrderIndex`,
	`d`.`Name1`,
	`d`.`Name2`,
	`d`.`Name3`
FROM
	(
		SELECT
			`t1`.`Id`,
			CASE
				WHEN `t1`.`C1` = 'T' THEN 1
				ELSE 0
			END as `c1`,
			CASE
				WHEN `t1`.`C1` <> 'T' THEN 1
				ELSE 0
			END as `c2`
		FROM
			`Issue4596Form` `t1`
		LIMIT 1
	) `m_1`,
	`Issue4596Item` `d`
WHERE
	`d`.`FormId` = `m_1`.`Id`
ORDER BY
	CASE
		WHEN `m_1`.`c1` = 1 THEN `d`.`OrderIndex`
		ELSE 0
	END,
	CASE
		WHEN `m_1`.`c2` = 1 THEN `d`.`Name1`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`c2` = 1 THEN `d`.`Name2`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`c2` = 1 THEN `d`.`Name3`
		ELSE ''
	END

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`C1`,
	CASE
		WHEN `t1`.`C1` = 'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`C1` <> 'T' THEN 1
		ELSE 0
	END
FROM
	`Issue4596Form` `t1`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4596Form`

