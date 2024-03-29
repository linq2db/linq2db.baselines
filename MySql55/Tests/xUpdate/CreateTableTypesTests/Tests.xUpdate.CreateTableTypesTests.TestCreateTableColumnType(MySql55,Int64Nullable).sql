﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`            INT    NOT NULL,
	`Int64Nullable` BIGINT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Int64Nullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

