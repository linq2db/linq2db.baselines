﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int32Nullable Int32
SET     @Int32Nullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32Nullable`
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int32Nullable Int32
SET     @Int32Nullable = 2

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int32Nullable`
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Int32Nullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

