BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Topic`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Topic`
(
	`Id`    INT           NOT NULL,
	`Title` VARCHAR(4000)     NULL,
	`Text`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Message`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Message`
(
	`Id`      INT           NOT NULL,
	`TopicId` INT           NOT NULL,
	`Text`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`Id`,
	`d`.`Id`
FROM
	(
		SELECT
			`x`.`Id`
		FROM
			`Topic` `x`
		WHERE
			`x`.`Id` = 6
		LIMIT 1
	) `m_1`
		INNER JOIN `Message` `d` ON `m_1`.`Id` = `d`.`TopicId`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Id`,
	`x`.`Title`,
	`x`.`Text`
FROM
	`Topic` `x`
WHERE
	`x`.`Id` = 6
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Message`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Topic`

