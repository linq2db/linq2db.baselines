BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value4___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` IN (@In) OR `s`.`CEnum` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` NOT IN (@NotIn) AND `s`.`CEnum` IS NOT NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` NOT IN (@NotIn, @NotIn_1) OR `s`.`CEnum` IS NULL)
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Src`

