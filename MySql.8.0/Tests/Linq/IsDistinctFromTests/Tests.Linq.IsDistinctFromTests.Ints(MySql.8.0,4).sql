BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <> @value

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NULL OR `s`.`NullableInt` <> @value

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` = @value

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableInt` IS NULL OR `s`.`NullableInt` <> @value)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Src`

