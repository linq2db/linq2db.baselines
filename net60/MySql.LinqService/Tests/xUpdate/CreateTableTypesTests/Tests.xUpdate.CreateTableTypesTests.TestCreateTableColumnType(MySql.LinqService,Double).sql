﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`     INT    NOT NULL,
	`Double` DOUBLE NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Double Double
SET     @Double = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Double`
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Double Double
SET     @Double = 3.1400000000000001

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Double`
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Double`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

