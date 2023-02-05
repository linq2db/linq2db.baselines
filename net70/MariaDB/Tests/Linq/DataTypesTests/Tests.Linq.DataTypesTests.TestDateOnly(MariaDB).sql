BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`ColumnNullable` DATE     NULL,
	`Column`         DATE NOT NULL,
	`Id`             INT  NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `DateOnlyTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'1950-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Column_1 Datetime -- DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2200-01-01'

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = '2020-02-29' AND `r`.`ColumnNullable` = '2200-01-01'

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`DateOnlyTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = NULL
DECLARE @Column_1 Datetime -- DateTime
SET     @Column_1 = '1950-01-01'
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `DateOnlyTable`
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
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2200-01-01'
DECLARE @Column_1 Datetime -- DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `DateOnlyTable`
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
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`DateOnlyTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `DateOnlyTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'1950-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`DateOnlyTable` `t1`

BeforeExecute
INSERT BULK `DateOnlyTable`(ColumnNullable, Column, Id

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

