﻿BeforeExecute
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
	`m_1`.`cond`,
	`m_1`.`cond_1`,
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
			`t1`.`C1` = 'T' as `cond`,
			`t1`.`C1` <> 'T' as `cond_1`
		FROM
			`Issue4596Form` `t1`
		LIMIT 1
	) `m_1`,
	`Issue4596Item` `d`
WHERE
	`d`.`FormId` = `m_1`.`Id`
ORDER BY
	CASE
		WHEN `m_1`.`cond` THEN `d`.`OrderIndex`
		ELSE 0
	END,
	CASE
		WHEN `m_1`.`cond_1` THEN `d`.`Name1`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`cond_1` THEN `d`.`Name2`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`cond_1` THEN `d`.`Name3`
		ELSE ''
	END

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`C1`,
	`t1`.`C1` = 'T',
	`t1`.`C1` <> 'T'
FROM
	`Issue4596Form` `t1`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4596Item`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4596Form`

