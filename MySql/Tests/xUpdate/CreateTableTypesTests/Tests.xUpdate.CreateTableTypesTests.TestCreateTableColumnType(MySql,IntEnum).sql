﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`      INT NOT NULL,
	`IntEnum` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnum Int32
SET     @IntEnum = 11

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnum`
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnum Int32
SET     @IntEnum = 60

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`IntEnum`
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntEnum`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

