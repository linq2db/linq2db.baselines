BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`Id`             INT  NOT NULL,
	`Column`         DATE NOT NULL,
	`ColumnNullable` DATE     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `DateOnlyTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Column_1 Datetime -- DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2200-01-01'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Datetime -- DateTime
SET     @Column_1 = '1950-01-01'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = NULL

INSERT INTO `DateOnlyTable`
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
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Datetime -- DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2200-01-01'

INSERT INTO `DateOnlyTable`
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
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
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
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
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
INSERT BULK `DateOnlyTable`(Id, Column, ColumnNullable

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

