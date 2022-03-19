BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `StringEnumTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `StringEnumTable`
(
	`ColumnNullable` VARCHAR(8)     NULL,
	`Column`         VARCHAR(8) NOT NULL,
	`Id`             INT        NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `StringEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = 'value=2' AND `r`.`ColumnNullable` = 'value=33'

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `StringEnumTable`
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
-- MySql MySql.Official MySql
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `StringEnumTable`
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
-- MySql MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `StringEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `StringEnumTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `StringEnumTable`

