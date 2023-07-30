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
DECLARE @value Int32
SET     @value = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Int32
SET     @value = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Int32
SET     @value = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value

BeforeExecute
-- MySqlConnector MySql
DECLARE @value Int32
SET     @value = 2

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

