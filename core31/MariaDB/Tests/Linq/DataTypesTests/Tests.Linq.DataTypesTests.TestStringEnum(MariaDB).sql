BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `StringEnumTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `StringEnumTable`
(
	`ColumnNullable` VARCHAR(8)     NULL,
	`Column`         VARCHAR(8) NOT NULL,
	`Id`             INT        NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
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
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
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
INSERT BULK `StringEnumTable`(ColumnNullable, Column, Id

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `StringEnumTable`

