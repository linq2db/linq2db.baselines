﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Topic`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Topic`
(
	`Id`    INT           NOT NULL,
	`Title` VARCHAR(4000)     NULL,
	`Text`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Message`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Message`
(
	`Id`      INT           NOT NULL,
	`TopicId` INT           NOT NULL,
	`Text`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
		INNER JOIN `Message` `detail` ON `key_data_result`.`Id` = `detail`.`TopicId`

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Message`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Topic`

