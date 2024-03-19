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

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, -2)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Int` IN (-1) OR `s`.`Int` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (-1, 2)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Int` NOT IN (2) AND `s`.`Int` IS NOT NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Int` NOT IN (-1, 2) OR `s`.`Int` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

