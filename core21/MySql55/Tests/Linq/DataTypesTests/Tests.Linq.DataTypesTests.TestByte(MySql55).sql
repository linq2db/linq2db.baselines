BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `ByteTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ByteTable`
(
	`ColumnNullable` TINYINT UNSIGNED     NULL,
	`Column`         TINYINT UNSIGNED NOT NULL,
	`Id`             INT              NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `ByteTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Column_1 UByte -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = 2

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = 255 AND `r`.`ColumnNullable` = 2

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`ByteTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 UByte -- Byte
SET     @Column_1 = 1
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `ByteTable`
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
-- MySql55 MySql.Official MySql
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 UByte -- Byte
SET     @Column_1 = 255
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `ByteTable`
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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`ByteTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `ByteTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`ByteTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `ByteTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `ByteTable`

