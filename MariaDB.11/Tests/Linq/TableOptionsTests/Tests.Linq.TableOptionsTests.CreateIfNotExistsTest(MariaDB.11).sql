BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `CreateIfNotExistsTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	2
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`CreateIfNotExistsTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

