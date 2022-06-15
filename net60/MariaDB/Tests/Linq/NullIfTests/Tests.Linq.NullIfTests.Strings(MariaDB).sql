BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT           NOT NULL,
	`NullableInt`    INT               NULL,
	`String`         VARCHAR(4000)     NULL,
	`NullableString` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

SELECT
	NULLIF(`s`.`String`, 'abc')
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	NULLIF(`s`.`String`, 'xyz')
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	NULLIF(`s`.`String`, NULL)
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableString`, 'abc')
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableString`, 'xyz')
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	NULLIF(`s`.`NullableString`, NULL)
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Src`

