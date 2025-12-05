-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Column VarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`StringEnumTable` `r`
WHERE
	`r`.`Column` = 'value=2' AND `r`.`ColumnNullable` = 'value=33'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`StringEnumTable`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column VarChar(5) -- String
SET     @Column = 'val=1'
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
	@Column,
	@ColumnNullable
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column VarChar(7) -- String
SET     @Column = 'value=2'
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
	@Column,
	@ColumnNullable
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`StringEnumTable`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `StringEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`StringEnumTable`

INSERT BULK `StringEnumTable`(Id, Column, ColumnNullable)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`StringEnumTable` `t1`
ORDER BY
	`t1`.`Id`

