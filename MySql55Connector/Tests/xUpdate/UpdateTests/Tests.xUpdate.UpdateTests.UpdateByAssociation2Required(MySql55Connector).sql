BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `t1`
		INNER JOIN `AssociatedTable` `a_MainRequired` ON `a_MainRequired`.`Id` = `t1`.`Id`
SET
	`t1`.`Field` = 'test'
WHERE
	`a_MainRequired`.`Id` = @id

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

