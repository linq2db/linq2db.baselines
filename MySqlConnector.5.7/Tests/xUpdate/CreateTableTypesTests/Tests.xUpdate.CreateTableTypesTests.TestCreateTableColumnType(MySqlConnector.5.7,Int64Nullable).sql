﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int64Nullable Int64
SET     @Int64Nullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64Nullable`
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int64Nullable Int64
SET     @Int64Nullable = 4

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Int64Nullable`
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Int64Nullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

