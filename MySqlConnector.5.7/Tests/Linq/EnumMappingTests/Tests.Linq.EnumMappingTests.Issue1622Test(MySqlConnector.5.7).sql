BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1622Table`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue1622Table`
(
	`Id`       INT           NOT NULL,
	`SomeText` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue1622Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO `Issue1622Table`
(
	`Id`,
	`SomeText`
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`e`.`Id`,
	`e`.`SomeText`
FROM
	`Issue1622Table` `e`
WHERE
	`e`.`SomeText` = 'Value1_suffix'
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`e`.`Id`,
	`e`.`SomeText`
FROM
	`Issue1622Table` `e`
WHERE
	`e`.`Id` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1622Table`

