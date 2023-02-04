BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `IntEnumTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `IntEnumTable`
(
	`ColumnNullable` INT     NULL,
	`Column`         INT NOT NULL,
	`Id`             INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `IntEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = 2 AND `r`.`ColumnNullable` = 3

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`IntEnumTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int32
SET     @Column_1 = 1
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `IntEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `IntEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`IntEnumTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `IntEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`IntEnumTable` `t1`

BeforeExecute
INSERT BULK `IntEnumTable`(ColumnNullable, Column, Id

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `IntEnumTable`

