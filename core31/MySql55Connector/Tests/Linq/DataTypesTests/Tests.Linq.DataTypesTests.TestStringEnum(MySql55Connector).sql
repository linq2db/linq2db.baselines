BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `StringEnumTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `StringEnumTable`
(
	`Id`             INT        NOT NULL,
	`Column`         VARCHAR(8) NOT NULL,
	`ColumnNullable` VARCHAR(8)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = 'value=2' AND `r`.`ColumnNullable` = 'value=33'

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
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
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`StringEnumTable` `t1`

BeforeExecute
INSERT BULK `StringEnumTable`(Id, Column, ColumnNullable

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `StringEnumTable`

