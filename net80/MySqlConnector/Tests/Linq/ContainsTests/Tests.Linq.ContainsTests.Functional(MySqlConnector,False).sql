BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, -2)
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, NULL)
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, 2)
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` NOT IN (NULL, 2)
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` NOT IN (-1, 2)
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

