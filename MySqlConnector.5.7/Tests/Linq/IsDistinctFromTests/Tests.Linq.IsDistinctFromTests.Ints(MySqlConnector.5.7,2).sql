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
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Src`

