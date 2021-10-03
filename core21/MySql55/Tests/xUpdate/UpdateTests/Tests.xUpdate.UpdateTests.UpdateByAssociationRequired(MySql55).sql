BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT          NOT NULL,
	`Field` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql

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
-- MySql55 MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `MainTable`

