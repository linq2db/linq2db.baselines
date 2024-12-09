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

INSERT INTO `Src`
(
	`Int`,
	`NullableInt`,
	`String`,
	`NullableString`
)
VALUES
(2,2,'abc','abc'),
(3,NULL,'def',NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NULL OR `s`.`NullableInt` <> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` = @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableInt` IS NULL OR `s`.`NullableInt` <> @value)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Src`

