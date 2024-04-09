﻿BeforeExecute
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
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@CEnum, @CEnum)

BeforeExecute
-- MySqlConnector MySql
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (@CEnum, @CEnum)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

