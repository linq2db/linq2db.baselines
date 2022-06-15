BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `_`
		INNER JOIN `AssociatedTable` `a_AssociatedRequired` ON `_`.`Id` = `a_AssociatedRequired`.`Id`
		INNER JOIN `MainTable` `a_MainRequired` ON `a_AssociatedRequired`.`Id` = `a_MainRequired`.`Id`
SET
	`_`.`Field` = 'test'
WHERE
	`_`.`Id` = @id

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

