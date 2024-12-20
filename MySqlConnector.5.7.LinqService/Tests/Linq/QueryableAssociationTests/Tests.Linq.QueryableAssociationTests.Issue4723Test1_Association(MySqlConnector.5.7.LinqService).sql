BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4723Table1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4723Table1`
(
	`Id`               INT           NOT NULL,
	`ExpressionMethod` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4723Table2`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4723Table1`

