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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int Int32
SET     @Int = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int Int32
SET     @Int = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Src`

