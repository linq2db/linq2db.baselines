﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `StringEnumTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `StringEnumTable`
(
	`Id`             INT        NOT NULL,
	`Column`         VARCHAR(8) NOT NULL,
	`ColumnNullable` VARCHAR(8)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `StringEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Column VarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = 'value=2' AND `r`.`ColumnNullable` = 'value=33'

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column VarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO `StringEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column VarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO `StringEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `StringEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
INSERT BULK `StringEnumTable`(Id, Column, ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `StringEnumTable`

