-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int32 Int32
SET     @Int32 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32`
)
VALUES
(
	@Id,
	@Int32
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int32 Int32
SET     @Int32 = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32`
)
VALUES
(
	@Id,
	@Int32
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Int32`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

