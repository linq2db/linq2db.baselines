BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`   INT        NOT NULL,
	`Int`  INT            NULL,
	`Enum` VARCHAR(5)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`
)
VALUES
(1,NULL,NULL),
(2,2,'TWO')

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` IN (NULL, NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` NOT IN (NULL, NULL)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

