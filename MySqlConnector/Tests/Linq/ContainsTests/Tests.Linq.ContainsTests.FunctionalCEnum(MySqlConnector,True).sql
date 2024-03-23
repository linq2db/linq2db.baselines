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
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- AnsiString
SET     @CEnum_1 = '___Value4___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@CEnum, @CEnum_1)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` IN (@CEnum) OR `s`.`CEnum` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- AnsiString
SET     @CEnum_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@CEnum, @CEnum_1)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` NOT IN (@CEnum) AND `s`.`CEnum` IS NOT NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- AnsiString
SET     @CEnum_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` NOT IN (@CEnum, @CEnum_1) OR `s`.`CEnum` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

