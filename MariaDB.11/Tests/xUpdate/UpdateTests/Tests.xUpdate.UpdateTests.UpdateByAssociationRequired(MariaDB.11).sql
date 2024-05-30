BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainRequired`,
	`MainTable` `t1`
		INNER JOIN `AssociatedTable` `a_AssociatedRequired` ON `t1`.`Id` = `a_AssociatedRequired`.`Id`
SET
	`a_MainRequired`.`Field` = 'test'
WHERE
	`t1`.`Id` = @id AND `a_AssociatedRequired`.`Id` = `a_MainRequired`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

