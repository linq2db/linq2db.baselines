-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnumNullable`
)
VALUES
(
	@Id,
	@IntEnumNullable
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = 60

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnumNullable`
)
VALUES
(
	@Id,
	@IntEnumNullable
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`IntEnumNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

