﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Topic`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Topic`
(
	`Id`    INT           NOT NULL,
	`Title` VARCHAR(4000)     NULL,
	`Text`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Message`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Message`
(
	`Id`      INT           NOT NULL,
	`TopicId` INT           NOT NULL,
	`Text`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO `Topic`
(
	`Id`,
	`Title`,
	`Text`
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 60
DECLARE @TopicId Int32
SET     @TopicId = 6
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO `Message`
(
	`Id`,
	`TopicId`,
	`Text`
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 61
DECLARE @TopicId Int32
SET     @TopicId = 7
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO `Message`
(
	`Id`,
	`TopicId`,
	`Text`
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`key_data_result`.`Id`,
	`key_data_result`.`Title`,
	`key_data_result`.`Text`,
	`detail`.`Id`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`,
			`t1`.`Title`,
			`t1`.`Text`
		FROM
			(
				SELECT
					`x`.`Id`,
					`x`.`Title`,
					`x`.`Text`
				FROM
					`Topic` `x`
				WHERE
					`x`.`Id` = 6
				LIMIT @take
			) `t1`
	) `key_data_result`
		INNER JOIN `Message` `detail` ON `detail`.`TopicId` = `key_data_result`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Id`,
	`x`.`Title`,
	`x`.`Text`
FROM
	`Topic` `x`
WHERE
	`x`.`Id` = 6
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Message`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Topic`

