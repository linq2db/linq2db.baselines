BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NULL

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

