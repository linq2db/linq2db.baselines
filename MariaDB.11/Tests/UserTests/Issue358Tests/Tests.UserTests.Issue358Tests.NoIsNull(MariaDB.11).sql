BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestIssue358Class`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestIssue358Class`
(
	`MyEnum`  INT     NULL,
	`MyEnum2` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`MyEnum`,
	`p`.`MyEnum2`
FROM
	`TestIssue358Class` `p`
WHERE
	`p`.`MyEnum2` <> 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TestIssue358Class`

