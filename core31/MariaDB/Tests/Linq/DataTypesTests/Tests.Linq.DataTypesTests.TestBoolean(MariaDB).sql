BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `BooleanTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BooleanTable`
(
	`ColumnNullable` BOOLEAN     NULL,
	`Column`         BOOLEAN NOT NULL,
	`Id`             INT     NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `BooleanTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(1,0,2)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Column_1 Bool -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = 1

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = 0 AND `r`.`ColumnNullable` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 Bool -- Boolean
SET     @Column_1 = 1
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `BooleanTable`
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
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = 1
DECLARE @Column_1 Bool -- Boolean
SET     @Column_1 = 0
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `BooleanTable`
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
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `BooleanTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(1,0,2)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
INSERT BULK `BooleanTable`(ColumnNullable, Column, Id

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `BooleanTable`

