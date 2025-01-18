﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int64 Int64
SET     @Int64 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64`
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int64 Int64
SET     @Int64 = 3

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64`
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Int64`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

