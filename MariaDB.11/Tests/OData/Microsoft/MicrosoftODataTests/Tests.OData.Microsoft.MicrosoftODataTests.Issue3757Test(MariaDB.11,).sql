BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3757Level1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3757Level1`
(
	`ID`     INT           NOT NULL,
	`ValS`   VARCHAR(4000)     NULL,
	`ValB`   BOOLEAN           NULL,
	`ValInt` INT               NULL,

	CONSTRAINT `PK_Issue3757Level1` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3757Level2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3757Level2`
(
	`ID`       INT           NOT NULL,
	`ParentId` INT           NOT NULL,
	`ValS`     VARCHAR(4000)     NULL,
	`ValB`     BOOLEAN           NULL,
	`ValInt`   INT               NULL,

	CONSTRAINT `PK_Issue3757Level2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ID`,
	`m_1`.`ValS`,
	`d`.`ID`,
	`d`.`ValB`,
	`d`.`ValInt`
FROM
	`Issue3757Level1` `m_1`
		INNER JOIN `Issue3757Level2` `d` ON `m_1`.`ID` = `d`.`ParentId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`l1`.`ID`,
	`l1`.`ValB`,
	`l1`.`ValS`,
	`l1`.`ValInt`
FROM
	`Issue3757Level1` `l1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3757Level2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3757Level1`

