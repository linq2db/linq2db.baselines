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

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`Int`, NULL)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	NULLIF(`s`.`NullableInt`, NULL)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Src`

