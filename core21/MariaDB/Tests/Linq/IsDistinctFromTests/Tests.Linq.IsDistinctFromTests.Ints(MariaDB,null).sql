BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT          NOT NULL,
	`NullableInt`    INT              NULL,
	`String`         VARCHAR(255)     NULL,
	`NullableString` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Src` `s`

BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NOT NULL

BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 0

BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NULL

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `Src`

