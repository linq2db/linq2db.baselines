﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `MainTable`

