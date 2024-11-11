BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`               INT      NOT NULL,
	`DateTimeNullable` DATETIME     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTimeNullable DateTime
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTimeNullable DateTime
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`DateTimeNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `CreateTableTypes`

