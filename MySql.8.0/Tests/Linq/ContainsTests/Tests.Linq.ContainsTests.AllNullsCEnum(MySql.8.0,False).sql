BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@CEnum, @CEnum)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (@CEnum, @CEnum)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Src`

