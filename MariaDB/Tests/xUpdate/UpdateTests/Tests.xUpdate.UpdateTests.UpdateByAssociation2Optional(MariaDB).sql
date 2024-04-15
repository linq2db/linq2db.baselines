﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(1,'value 1'),
(2,'value 2'),
(3,'value 3')

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainOptional`,
	`AssociatedTable` `pat`
SET
	`a_MainOptional`.`Field` = 'test'
WHERE
	`pat`.`Id` = @id AND `pat`.`Id` = `a_MainOptional`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

