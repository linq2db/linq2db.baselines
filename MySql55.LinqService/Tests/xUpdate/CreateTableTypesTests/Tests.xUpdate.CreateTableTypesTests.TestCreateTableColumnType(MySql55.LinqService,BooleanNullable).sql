﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`              INT     NOT NULL,
	`BooleanNullable` BOOLEAN     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BooleanNullable UByte -- Boolean
SET     @BooleanNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`BooleanNullable`
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BooleanNullable UByte -- Boolean
SET     @BooleanNullable = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`BooleanNullable`
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`BooleanNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

