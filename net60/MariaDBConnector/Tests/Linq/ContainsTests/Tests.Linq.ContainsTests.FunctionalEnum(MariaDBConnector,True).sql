﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE') OR `s`.`Enum` IS NULL
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` NOT IN ('TWO') AND `s`.`Enum` IS NOT NULL
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`Enum` NOT IN ('THREE', 'TWO') OR `s`.`Enum` IS NULL)
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

