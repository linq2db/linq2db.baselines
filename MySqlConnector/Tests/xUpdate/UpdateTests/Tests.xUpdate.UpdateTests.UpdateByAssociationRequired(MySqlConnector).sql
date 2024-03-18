BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Field VarChar(4) -- String
SET     @Field = 'test'
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainRequired`,
	`MainTable` `_`
		INNER JOIN `AssociatedTable` `a_AssociatedRequired` ON `_`.`Id` = `a_AssociatedRequired`.`Id`
SET
	`a_MainRequired`.`Field` = @Field
WHERE
	`_`.`Id` = @id AND `a_AssociatedRequired`.`Id` = `a_MainRequired`.`Id`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `MainTable`

