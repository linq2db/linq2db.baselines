BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Int Int32
SET     @Int = 2
DECLARE @NullableInt Int32
SET     @NullableInt = 2
DECLARE @String VarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO `Src`
(
	`Int`,
	`NullableInt`,
	`String`,
	`NullableString`
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Int Int32
SET     @Int = 3
DECLARE @NullableInt Int32
SET     @NullableInt = NULL
DECLARE @String VarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarChar -- String
SET     @NullableString = NULL

INSERT INTO `Src`
(
	`Int`,
	`NullableInt`,
	`String`,
	`NullableString`
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NULL OR `s`.`String` <> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NULL OR `s`.`NullableString` <> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`String` IS NULL OR `s`.`String` <> @value)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableString` IS NULL OR `s`.`NullableString` <> @value)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Src`

