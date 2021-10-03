BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Int`            INT          NOT NULL,
	`NullableInt`    INT              NULL,
	`String`         VARCHAR(255)     NULL,
	`NullableString` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql

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
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Src` `s`

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NOT NULL

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	1 = 0

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NULL

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `Src`

