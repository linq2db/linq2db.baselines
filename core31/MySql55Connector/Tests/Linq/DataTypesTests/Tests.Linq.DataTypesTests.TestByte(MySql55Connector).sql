BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ByteTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ByteTable`
(
	`Id`             INT              NOT NULL,
	`Column`         TINYINT UNSIGNED NOT NULL,
	`ColumnNullable` TINYINT UNSIGNED     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `ByteTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,255,2)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Column_1 UByte -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = 2

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = 255 AND `r`.`ColumnNullable` = 2

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`ByteTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 UByte -- Byte
SET     @Column_1 = 1
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = NULL

INSERT INTO `ByteTable`
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
DECLARE @Column_1 UByte -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = 2

INSERT INTO `ByteTable`
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
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`ByteTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `ByteTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,255,2)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`ByteTable` `t1`

BeforeExecute
INSERT BULK `ByteTable`(Id, Column, ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ByteTable`

