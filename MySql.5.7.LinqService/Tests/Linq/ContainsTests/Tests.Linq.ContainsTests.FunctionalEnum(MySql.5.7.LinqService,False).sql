BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', NULL)
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` NOT IN (NULL, 'TWO')
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`Enum` NOT IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Src`

