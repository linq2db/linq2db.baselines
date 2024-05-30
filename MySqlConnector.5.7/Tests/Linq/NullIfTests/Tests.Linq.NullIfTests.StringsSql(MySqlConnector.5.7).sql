BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`String`, 'abc')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`String`, 'xyz')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`String`, NULL)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`NullableString`, 'abc')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`NullableString`, 'xyz')
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	NULLIF(`s`.`NullableString`, NULL)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Src`

