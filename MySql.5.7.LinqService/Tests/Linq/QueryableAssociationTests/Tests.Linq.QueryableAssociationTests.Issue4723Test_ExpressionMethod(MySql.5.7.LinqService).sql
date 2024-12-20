BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4723Table1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4723Table1`
(
	`Id`               INT           NOT NULL,
	`ExpressionMethod` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @ExpressionMethod VarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO `Issue4723Table1`
(
	`Id`,
	`ExpressionMethod`
)
VALUES
(
	@Id,
	@ExpressionMethod
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue4723Table2`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO `Issue4723Table2`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO `Issue4723Table2`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO `Issue4723Table2`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	(
		SELECT
			`se`.`Value`
		FROM
			`Issue4723Table2` `se`
		WHERE
			`se`.`Id` = `t1`.`Id`
		LIMIT 1
	)
FROM
	`Issue4723Table1` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue4723Table1`

