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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(
	@Id,
	@Field
)

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
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDB MySql.Official MySql
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

