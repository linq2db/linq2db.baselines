BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS `TempTable`
(
	`Name` VARCHAR(20) NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

INSERT INTO `TempTable`
(
	`Name`
)
VALUES
('John')

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

SELECT
	`t`.`Name`
FROM
	`Person` `p`
		INNER JOIN `TempTable` `t` ON `p`.`FirstName` = `t`.`Name`

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

