﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`              INT NOT NULL,
	`IntEnumNullable` INT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
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

BeforeExecute
-- MariaDB MySql.Official MySql
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

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntEnumNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

