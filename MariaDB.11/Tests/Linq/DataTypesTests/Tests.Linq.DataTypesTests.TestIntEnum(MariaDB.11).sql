-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Column Int32
SET     @Column = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = 2 AND `r`.`ColumnNullable` = 3

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`IntEnumTable`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Int32
SET     @Column = 1
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = NULL

INSERT INTO `IntEnumTable`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Int32
SET     @Column = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

INSERT INTO `IntEnumTable`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`IntEnumTable`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,2,3)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`IntEnumTable`

INSERT BULK `IntEnumTable`(Id, Column, ColumnNullable)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

