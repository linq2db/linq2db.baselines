﻿BeforeExecute
-- MySql55 MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`                 INT        NOT NULL,
	`StringEnumNullable` VARCHAR(2)     NULL
)

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql
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
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`StringEnumNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `CreateTableTypes`

