BeforeExecute
-- MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`               INT      NOT NULL,
	`DateTimeNullable` DATETIME     NULL
)

BeforeExecute
-- MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTimeNullable Datetime -- DateTime2
SET     @DateTimeNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTimeNullable Datetime -- DateTime2
SET     @DateTimeNullable = '2018-11-25 01:02:03'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MySql

SELECT
	`t1`.`Id`,
	`t1`.`DateTimeNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `CreateTableTypes`

