BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4723Table1`
(
	`Id`               INT           NOT NULL,
	`ExpressionMethod` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4723Table2`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`,
	`t1`.`Association`
FROM
	`Issue4723Table1` `x`
		LEFT JOIN LATERAL (
			SELECT
				`a_Association`.`Value` as `Association`
			FROM
				`Issue4723Table2` `a_Association`
			WHERE
				`a_Association`.`Id` = `x`.`Id`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`Association` IS NOT NULL AND (`t1`.`Association` <> 'unknown' OR `t1`.`Association` IS NULL)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table1`

