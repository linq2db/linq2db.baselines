BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `IntEnumTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `IntEnumTable`
(
	`Id`             INT NOT NULL,
	`Column`         INT NOT NULL,
	`ColumnNullable` INT     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,2,3)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = 2 AND `r`.`ColumnNullable` = 3

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`IntEnumTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Int32
SET     @Column_1 = 1
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = NULL

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`IntEnumTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,2,3)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`IntEnumTable` `t1`

BeforeExecute
INSERT BULK `IntEnumTable`(Id, Column, ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `IntEnumTable`

