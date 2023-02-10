BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `BooleanTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BooleanTable`
(
	`Id`             INT     NOT NULL,
	`Column`         BOOLEAN NOT NULL,
	`ColumnNullable` BOOLEAN     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `BooleanTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,0,1)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Column_1 Bool -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = 1

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = 0 AND `r`.`ColumnNullable` = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Bool -- Boolean
SET     @Column_1 = 1
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = NULL

INSERT INTO `BooleanTable`
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
DECLARE @Column_1 Bool -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = 1

INSERT INTO `BooleanTable`
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
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `BooleanTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,0,1)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
INSERT BULK `BooleanTable`(Id, Column, ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `BooleanTable`

