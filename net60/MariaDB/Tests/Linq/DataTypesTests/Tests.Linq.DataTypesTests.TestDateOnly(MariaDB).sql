BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`ColumnNullable` DATE     NULL,
	`Column`         DATE NOT NULL,
	`Id`             INT  NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `DateOnlyTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Column_1 DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable DateTime
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
-- MariaDB MySql.Official MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = '2020-02-29' AND `r`.`ColumnNullable` = '2200-01-01'

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`DateOnlyTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = NULL
DECLARE @Column_1 DateTime
SET     @Column_1 = '1900-01-01'
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
-- MariaDB MySql.Official MySql
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2200-01-01'
DECLARE @Column_1 DateTime
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
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`DateOnlyTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `DateOnlyTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`DateOnlyTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `DateOnlyTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DateOnlyTable`

