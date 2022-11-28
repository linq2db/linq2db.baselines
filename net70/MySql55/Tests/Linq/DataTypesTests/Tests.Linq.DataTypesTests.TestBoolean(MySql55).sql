BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BooleanTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `BooleanTable`
(
	`ColumnNullable` BOOLEAN     NULL,
	`Column`         BOOLEAN NOT NULL,
	`Id`             INT     NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
DECLARE @Column_1 UByte -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable UByte -- Boolean
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
-- MySql55 MySql.Official MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = 0 AND `r`.`ColumnNullable` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ColumnNullable UByte -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 UByte -- Boolean
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
-- MySql55 MySql.Official MySql
DECLARE @ColumnNullable UByte -- Boolean
SET     @ColumnNullable = 1
DECLARE @Column_1 UByte -- Boolean
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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `t1`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BooleanTable`

