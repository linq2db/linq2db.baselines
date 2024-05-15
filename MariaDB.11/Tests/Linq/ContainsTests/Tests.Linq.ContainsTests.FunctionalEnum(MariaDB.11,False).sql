BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', NULL)
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` NOT IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

