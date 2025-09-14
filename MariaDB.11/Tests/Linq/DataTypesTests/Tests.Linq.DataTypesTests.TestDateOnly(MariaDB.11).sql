BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Column Datetime -- DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2020-01-01'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = '2020-02-29' AND `r`.`ColumnNullable` = '2020-01-01'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Datetime -- DateTime
SET     @Column = '1980-01-01'
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
	@Column,
	@ColumnNullable
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Datetime -- DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2020-01-01'

INSERT INTO `DateOnlyTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `DateOnlyTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'1980-01-01',NULL),
(2,'2020-02-29','2020-01-01')

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
INSERT BULK `DateOnlyTable`(Id, Column, ColumnNullable)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

