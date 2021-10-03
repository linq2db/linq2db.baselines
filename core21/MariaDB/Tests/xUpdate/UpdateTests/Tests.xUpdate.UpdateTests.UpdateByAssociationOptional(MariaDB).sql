BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT          NOT NULL,
	`Field` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MariaDB MySql
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `_`
		LEFT JOIN `AssociatedTable` `a_AssociatedOptional` ON `_`.`Id` = `a_AssociatedOptional`.`Id`
		LEFT JOIN `MainTable` `a_MainOptional` ON `a_AssociatedOptional`.`Id` = `a_MainOptional`.`Id`
SET
	`_`.`Field` = 'test'
WHERE
	`_`.`Id` = @id

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `MainTable`

