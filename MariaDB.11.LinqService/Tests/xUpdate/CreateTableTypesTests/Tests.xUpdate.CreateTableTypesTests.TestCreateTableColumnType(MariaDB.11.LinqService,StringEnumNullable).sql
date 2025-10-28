BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringEnumNullable VarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringEnumNullable`
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringEnumNullable VarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`StringEnumNullable`
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`StringEnumNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

