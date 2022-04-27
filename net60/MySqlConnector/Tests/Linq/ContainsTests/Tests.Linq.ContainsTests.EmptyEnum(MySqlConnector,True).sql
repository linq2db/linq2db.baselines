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
	1 = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

